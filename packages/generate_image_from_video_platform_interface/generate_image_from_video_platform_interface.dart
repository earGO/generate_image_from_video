import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// The interface that implementations of generate_image_from_video must implement.
///
/// Platform implementations should extend this class rather than implement it as `generate_image_from_video`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [GenerateImageFromVideoPlatform] methods.

abstract class GenerateImageFromVideoPlatform extends PlatformInterface {
  GenerateImageFromVideoPlatform({required Object token}) : super(token: token);
}
