class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :destroy, :update]

  def index
    @categories = Category.all
  end

  def show
    @shootings = []
    @category.shooting_ids.each { |shoot| @shootings << Shooting.find(shoot)}
    # where(@category == Shooting.category)
    # @shootings = Shooting.where(category == @category.name)
  end

  def filter_categories_for_links
    @category = Category.where(category: "#{params[:query]}")
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save!
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end


  def destroy
    @category.destroy
    redirect_to categories_path

    # respond_to do |format|
    #   format.html { render 'dashboard/goals' }
    #   format.js  { render :layout => false }
    # end
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :cover)
  end
end
