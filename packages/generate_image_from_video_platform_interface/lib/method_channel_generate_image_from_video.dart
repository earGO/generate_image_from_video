import 'dart:async';

import 'package:flutter/services.dart';

import 'generate_image_from_video_platform_interface.dart';

const MethodChannel _channel =
    MethodChannel('plugins.flutter.io/generate_image_from_video');

/// An implementation of [GenerateImageFromVideoPlatform] that uses method channels.
class MethodChannelGenerateImageFromVideo
    extends GenerateImageFromVideoPlatform {
  MethodChannelGenerateImageFromVideo({required Object token})
      : super(token: token);

  @override
  Future<bool?> data(Map<String, dynamic> reqMap) {
    return _channel.invokeMethod<bool>(
      'data',
      <String, Object>{
        'url': 'url',
      },
    );
  }
}
