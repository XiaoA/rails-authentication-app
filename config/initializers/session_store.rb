if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "https://aeb-rails-authentication-app.herokuapp.com", HttpOnly: true
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", HttpOnly: true
end
