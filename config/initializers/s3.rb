
if Rails.env == "production"
  # set credentials from ENV hash
  S3_CREDENTIALS = { 
  	:access_key_id => ENV['AKIAI3SFXWVKKD5YV3FQ'],
   	:secret_access_key => ENV['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'],
    :bucket => "edymyecommerce"}
end

 #also need to set this vars to heroku
 #heroku config:add AWS_ACCESS_KEY_ID='AKIAI3SFXWVKKD5YV3FQ'
 #heroku config:add AWS_SECRET_ACCESS_KEY='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'
 #heroku config:add AWS_BUCKET='edymyecommerce'
 
#Paperclip::Attachment.default_options[:storage] = :S3
#Paperclip::Attachment.default_options[S3_CREDENTIALS] = { 
 # 	:access_key_id => ENV['AKIAI3SFXWVKKD5YV3FQ'],
  # 	:secret_access_key => ENV['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'],
   # :bucket => "edymyecommerce"}

