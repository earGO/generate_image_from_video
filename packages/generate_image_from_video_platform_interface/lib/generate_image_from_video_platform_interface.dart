import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../method_channel_generate_image_from_video.dart';

/// The interface that implementations of generate_image_from_video must implement.
///
/// Platform implementations should extend this class rather than implement it as `generate_image_from_video`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [GenerateImageFromVideoPlatform] methods.

abstract class GenerateImageFromVideoPlatform extends PlatformInterface {
  GenerateImageFromVideoPlatform({required Object token}) : super(token: token);

  static final Object _token = Object();

  static GenerateImageFromVideoPlatform _instance =
      MethodChannelGenerateImageFromVideo(token: _token);

  /// The default instance of [GenerateImageFromVideoPlatform] to use.
  ///
  /// Defaults to [MethodChannelGenerateImageFromVideo].
  static GenerateImageFromVideoPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [GenerateImageFromVideoPlatform] when they register themselves.
  static set instance(GenerateImageFromVideoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Launches the given [url]. Completes to [true] if the launch was successful.
  Future<Uint8List?> data(Map<String, dynamic> reqMap) {
    throw UnimplementedError('data() has not been implemented.');
  }
}
