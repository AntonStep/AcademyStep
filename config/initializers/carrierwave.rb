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
      aws_access_key_id: 'AKIAILOWRCA4ZYM55PMA',
      aws_secret_access_key: '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'

    }
    config.fog_directory = 'bookestorestep1'
  end
end
