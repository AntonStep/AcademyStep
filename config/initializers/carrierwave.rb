require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.test? || Rails.env.development?
    config.storage = :file
    config.enable_processing = false
  end

  if Rails.env.production?
    config.storage = :fog
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAI3GS7E5P4UCYWNQQ',
      aws_secret_access_key: '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'
    }
    config.fog_directory = 'images'
  end
end
