require 'carrierwave/orm/activerecord'

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "upload"
  end
  
  version :thumb do
    process :resize_to_fit => [200, 200]
  end

end
