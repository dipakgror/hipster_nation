ActionMailer::Base.smtp_settings = {
 :address              => "smtp.gmail.com",
 :port                 => 587,
 :user_name            => "hipsternationmail@gmail.com",
 :password             => "hn123456",
 :authentication       => "plain",
 :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = "hipster-nation.herokuapp.com"
