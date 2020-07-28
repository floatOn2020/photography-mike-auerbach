class ShootingsController < ApplicationController
  before_action :find_shooting, only: [:show, :edit]

  def index
    @categories = Category.all.sort_by { |cat| cat.order_number }
    @categories_shoots = []
    @categories.each_with_index do |cat, index|
      newArray = []
      newArray << cat.shootings.all
      @categories_shoots << newArray
    end
  end

  def show; end

  private

  def find_shooting
    @shooting = Shooting.find(params[:id])
  end

  def shooting_params
    params.require(:shooting).permit(:who_or_what, :date, :place, :cover, :category_id, photos: [])
  end
end
