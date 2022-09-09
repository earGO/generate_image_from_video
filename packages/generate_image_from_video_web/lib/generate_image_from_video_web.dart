import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:generate_image_from_video_platform_interface/generate_image_from_video_platform_interface.dart';

/// The web implementation of [GenerateImageFromVideoPlatform].
///
/// This class implements the `package:generate_image_from_Video` functionality for the web.
class GenerateImageFromVideoPlugin extends GenerateImageFromVideoPlatform {
  GenerateImageFromVideoPlugin({required Object token}) : super(token: token);
  static final Object _token = Object();

  /// Registers this class as the default instance of [GenerateImageFromVideoPlatform].
  static void registerWith(Registrar registrar) {
    GenerateImageFromVideoPlatform.instance =
        GenerateImageFromVideoPlugin(token: _token);
  }

  @override
  Future<Uint8List?> data(Map<String, dynamic> reqMap) {
    throw UnimplementedError('data() has not been implemented.');
  }
}
