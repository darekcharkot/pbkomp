class ImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  version :hardwares_image do
    process :resize_to_fill => [60, 60]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end