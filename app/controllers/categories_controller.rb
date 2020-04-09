class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @shootings = []
    @category.shooting_ids.each { |shoot| @shootings << Shooting.find(shoot)}
    # where(@category == Shooting.category)
    # @shootings = Shooting.where(category == @category.name)

  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
