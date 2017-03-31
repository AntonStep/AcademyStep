

require 'carrierwave/storage/fog'


CarrierWave.configure do |config|
  if Rails.env.test? 
    config.storage = :file
    config.enable_processing = false
  end

  if Rails.env.production? || Rails.env.development?
    config.storage = :fog
    config.fog_credentials = {
      provider: 'AWS',
      #aws_access_key_id: Figaro.env.aws_access_key_id,
     # aws_secret_access_key: Figaro.env.aws_secret_access_key
      aws_access_key_id: 'AKIAJ5RP2M5MDDPOHNAA',
      aws_secret_access_key: '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'
     
    }
    #config.fog_directory = Figaro.env.aws_bucket
    config.fog_directory = 'bookstorestep2'
  end
end