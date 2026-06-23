import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/opening_camera_status.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_access_denied_view.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_error_view.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_screen_app_bar.dart';
import 'package:chefvision/presentation/pages/camera/widgets/camera_screen_content.dart';
import 'package:chefvision/presentation/pages/camera/widgets/initializing_camera_view.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  final OpeningCameraStatus openingCameraStatus = OpeningCameraStatus.accessDenied;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: openingCameraStatus == OpeningCameraStatus.opened ? AppColors.black : AppColors.gray950,
      appBar: CameraScreenAppBar(),
      extendBodyBehindAppBar: true,
      body: switch (openingCameraStatus) {
        OpeningCameraStatus.opened => CameraScreenContent(),
        OpeningCameraStatus.error => CameraErrorView(),
        OpeningCameraStatus.accessDenied => CameraAccessDeniedView(),
        OpeningCameraStatus.initializing => InitializingCameraView(),
      },
    );
  }
}
