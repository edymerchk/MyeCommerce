# initializers/s3.rb
if Rails.env == "production"
  # set credentials from ENV hash
  S3_CREDENTIALS = { 
  	:access_key_id => ENV['AKIAI3SFXWVKKD5YV3FQ'],
   	:secret_access_key => ENV['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'],
    :bucket => "edymyecommerce"}
end