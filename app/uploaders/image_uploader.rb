# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :fog

  def fog_public
    true
  end

  def image_upload?(new_file)
    new_file.content_type.include? 'image'
  end

  def image?
    !!(content_type =~ /image/)
  end

  def file?
    !!(content_type !~ /image/)
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "fallback/" + [version_name, "default.jpg"].compact.join('_')
  end

  version :thumb, :if => :image_upload? do
    process :resize_to_limit => [200, 200]
  end

  version :square, :if => :image_upload? do
    process :create_square_version
  end

  version :square_sm, :if => :image_upload? do
    process :create_square_sm_version
  end

  def create_square_version
    img = Magick::Image.read(current_path)
    width = img[0].columns
    height = img[0].rows
    if width > height
      # original is landscape
      resize_to_fill(400, 400)
    else
      # original is portrait
      resize_to_fit(400, 400) 
    end
  end

  def create_square_sm_version
    img = Magick::Image.read(current_path)
    width = img[0].columns
    height = img[0].rows
    if width > height
      # original is landscape
      resize_to_fill(200, 200)
    else
      # original is portrait
      resize_to_fit(200, 200) 
    end
  end
end
