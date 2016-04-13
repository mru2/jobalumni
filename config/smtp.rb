SMTP_SETTINGS = {
  user_name: ENV.fetch("SMTP_USERNAME"),
  password: ENV.fetch("SMTP_PASSWORD"),
  address: ENV.fetch("SMTP_ADDRESS"), # example: "smtp.sendgrid.net"
  domain: ENV.fetch("SMTP_HOST"), # example: "heroku.com"
  port: ENV.fetch("SMTP_PORT"),
  authentication: :plain,
  enable_starttls_auto: true
}
