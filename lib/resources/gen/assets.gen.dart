// dart format width=120

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/icons/camera.svg');

  /// File path: assets/icons/check.svg
  SvgGenImage get check => const SvgGenImage('assets/icons/check.svg');

  /// File path: assets/icons/chevron_right.svg
  SvgGenImage get chevronRight => const SvgGenImage('assets/icons/chevron_right.svg');

  /// File path: assets/icons/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/icons/clock.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/empty_box.svg
  SvgGenImage get emptyBox => const SvgGenImage('assets/icons/empty_box.svg');

  /// File path: assets/icons/error.svg
  SvgGenImage get error => const SvgGenImage('assets/icons/error.svg');

  /// File path: assets/icons/fire.svg
  SvgGenImage get fire => const SvgGenImage('assets/icons/fire.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/info.svg
  SvgGenImage get info => const SvgGenImage('assets/icons/info.svg');

  /// File path: assets/icons/language.svg
  SvgGenImage get language => const SvgGenImage('assets/icons/language.svg');

  /// File path: assets/icons/link.svg
  SvgGenImage get link => const SvgGenImage('assets/icons/link.svg');

  /// File path: assets/icons/payment_card.svg
  SvgGenImage get paymentCard => const SvgGenImage('assets/icons/payment_card.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/retry.svg
  SvgGenImage get retry => const SvgGenImage('assets/icons/retry.svg');

  /// File path: assets/icons/shopping_cart.svg
  SvgGenImage get shoppingCart => const SvgGenImage('assets/icons/shopping_cart.svg');

  /// File path: assets/icons/sub.svg
  SvgGenImage get sub => const SvgGenImage('assets/icons/sub.svg');

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// File path: assets/icons/warning.svg
  SvgGenImage get warning => const SvgGenImage('assets/icons/warning.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    back,
    camera,
    check,
    chevronRight,
    clock,
    edit,
    emptyBox,
    error,
    fire,
    home,
    info,
    language,
    link,
    paymentCard,
    plus,
    retry,
    shoppingCart,
    sub,
    trash,
    user,
    warning,
  ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/logo/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/uk.json
  String get uk => 'assets/translations/uk.json';

  /// List of all assets
  List<String> get values => [en, uk];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}, this.animation});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({required this.isAnimation, required this.duration, required this.frames});

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
