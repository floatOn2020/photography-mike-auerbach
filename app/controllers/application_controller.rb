class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  def default_url_options
    { host: ENV["DOMAIN"] || "https://mike-auerbach.herokuapp.com/" }
  end
end
