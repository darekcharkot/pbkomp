class ImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  version :hardwares_image do
    process :resize_to_fit => [320, 230]
  end

  version :hardwares_image_big do
    process :resize_to_fit => [400, 350]
  end

  version :hardwares_image_first do
    process :resize_to_fit => [370, 300]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end