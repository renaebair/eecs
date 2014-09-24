# encoding: utf-8

class EventUploader < AttachmentUploader

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  
    "fallback/" + [version_name, "event", "default.png"].compact.join('_')
  end

end
