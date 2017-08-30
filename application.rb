require "action_controller/railtie"
require "logjam_agent/railtie"

class TestApp < Rails::Application
  secrets.secret_token    = "secret_token"
  secrets.secret_key_base = "secret_key_base"

  config.logger = Logger.new($stdout)
  Rails.logger = config.logger

  routes.append do
    root "home#index"
  end
end

Rails.application.initialize!

class HomeController < ActionController::Base
  def index
    render inline: 'Hello, World!'
  end
end

