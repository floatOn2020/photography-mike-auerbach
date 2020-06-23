class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    flash[:alert] = "Work in progress. Most images taken from 'unsplash.com'."
    render layout: 'home'
  end

  def imprint; end
end
