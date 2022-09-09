import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:generate_image_from_video_platform_interface/generate_image_from_video_platform_interface.dart';

/// Support most popular image formats.
/// Uses libwebp to encode WebP image on iOS platform.
enum ImageFormat { JPEG, PNG, WEBP }

class VideoThumbnail {
  static const MethodChannel _channel =
      const MethodChannel('plugins.flutter.io/generate_image_from_video');

  /// Generates a thumbnail image data in memory as UInt8List, it can be easily used by Image.memory(...).
  /// The video can be a local video file, or an URL represents iOS or Android native supported video format.
  /// Specify the maximum height or width for the thumbnail or 0 for same resolution as the original video.
  /// The lower quality value creates lower quality of the thumbnail image, but it gets ignored for PNG format.
  static Future<Uint8List?> thumbnailData({
    required String video,
    Map<String, String>? headers,
    ImageFormat imageFormat = ImageFormat.PNG,
    int maxHeight = 0,
    int maxWidth = 0,
    int timeMs = 0,
    int quality = 10,
  }) async {
    assert(video.isNotEmpty);
    final reqMap = <String, dynamic>{
      'video': video,
      'headers': headers,
      'format': imageFormat.index,
      'maxh': maxHeight,
      'maxw': maxWidth,
      'timeMs': timeMs,
      'quality': quality,
    };
    final Uint8List? result =
        await GenerateImageFromVideoPlatform.instance.data(reqMap);
    return result;
  }
}
