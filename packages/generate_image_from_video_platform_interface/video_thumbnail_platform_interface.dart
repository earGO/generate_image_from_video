/// The interface that implementations of video_thumbnail must implement.
///
/// Platform implementations should extend this class rather than implement it as `video_thumbnail`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [VideoThumbnail] methods.
