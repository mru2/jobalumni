require 'premailer/rails'
Premailer::Rails.config.merge!(
  generate_text_part: false
)
