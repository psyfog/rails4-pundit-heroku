CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIXHCTNVNANFDWU3A',                        # required
    :aws_secret_access_key  => '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',                     # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    
  }
  config.fog_directory  = 'psyfog'                             # required
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end