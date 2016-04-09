OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '858597169308-6t5soic3nrja5grp5teunog1nabirl8i.apps.googleusercontent.com', 'tYRgiA5_xBliarebkAtKP27s', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end