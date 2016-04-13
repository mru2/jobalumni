Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET'],
    {
      scope: 'r_basicprofile r_emailaddress',
      fields: ['id', 'email-address', 'first-name', 'last-name', 'picture-url', 'positions'],
      secure_image_url: true
    }
end
