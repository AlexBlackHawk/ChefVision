import 'package:camera/camera.dart';
import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/opening_camera_status.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_access_denied_view.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_error_view.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_screen_app_bar.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_screen_content.dart';
import 'package:chefvision/presentation/pages/camera/widgets/initializing_camera_view.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver, TickerProviderStateMixin {

  CameraController? controller;

  OpeningCameraStatus? openingCameraStatus;

  CameraDescription? backCameraDescription;


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeCameraController();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCameraController(cameraController.description);
    }

    super.didChangeAppLifecycleState(state);
  }

  Future<void> _initializeCameraController([CameraDescription? cameraDescription]) async {
    setState(() {
      openingCameraStatus = OpeningCameraStatus.initializing;
    });
    CameraDescription camera;

    if (cameraDescription == null) {
      List<CameraDescription> cameras = await availableCameras();
      backCameraDescription = cameras.firstWhereOrNull((camera) => camera.lensDirection == CameraLensDirection.back);

      if (backCameraDescription == null) {
        setState(() {
          openingCameraStatus = OpeningCameraStatus.error;
        });
        return;
      }
      else {
        camera = backCameraDescription!;
      }
    }
    else {
      camera = cameraDescription;
    }

    final cameraController = CameraController(
      camera,
      kIsWeb ? ResolutionPreset.max : ResolutionPreset.medium,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    controller = cameraController;

    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (cameraController.value.hasError) {
        setState(() {
          openingCameraStatus = OpeningCameraStatus.error;
        });
      }
    });

    try {
      await cameraController.initialize();
      setState(() {
        openingCameraStatus = OpeningCameraStatus.opened;
      });
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied' || 'CameraAccessDeniedWithoutPrompt':
          setState(() {
            openingCameraStatus = OpeningCameraStatus.accessDenied;
          });
        default:
          setState(() {
            openingCameraStatus = OpeningCameraStatus.error;
          });
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: openingCameraStatus == OpeningCameraStatus.opened ? AppColors.black : AppColors.gray950,
      appBar: CameraScreenAppBar(),
      extendBodyBehindAppBar: true,
      body: switch (openingCameraStatus) {
        OpeningCameraStatus.opened => CameraScreenContent(
          controller: controller!,
        ),
        OpeningCameraStatus.error || null => CameraErrorView(),
        OpeningCameraStatus.accessDenied => CameraAccessDeniedView(),
        OpeningCameraStatus.initializing => InitializingCameraView(),
      },
    );
  }
}
