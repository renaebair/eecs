CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['S3_KEY'],
    :aws_secret_access_key => ENV['S3_SECRET'],
    :path_style             => true
  }
 
  config.fog_directory    = "eecs.#{Rails.env}"
  # config.fog_directory    = "eecs.production"
  config.fog_public       = true
  config.asset_host       = "http://#{config.fog_directory}.s3.amazonaws.com"
end
