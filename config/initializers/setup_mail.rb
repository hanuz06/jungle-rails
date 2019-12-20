ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :domain         => 'mail.google.com',
  :port           => 587,
  :user_name      => 'junglerails2020@gmail.com',
  :password       => 'Lighthouselabs',
  :authentication => :plain,
  :enable_starttls_auto => true
}