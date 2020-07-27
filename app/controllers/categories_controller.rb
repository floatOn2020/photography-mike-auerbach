class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :destroy, :update]

  def index
    @categories = Category.includes(cover_attachment: :blob).sort_by {|cat| cat.order_number }
    # set_meta_tags title: 'Categories of Photographies',
    #           description: 'Photos Categories.',
    #           keywords: 'Photography Mike Auerbach Categories People Landscapes Interieur Design'
    #           image: asset_url('mike_social_image.jpg')
  end

  def show
    # @shootings = Shooting.all.sort_by { |shoot| shoot.category.order_number }
    # @category.shooting_ids.each { |shoot| @shootings << Shooting.find(shoot)}
    # where(@category == Shooting.category)
    # @shootings = Shooting.where(category == @category.name)
  end


  # def new
  #   @category = Category.new
  # end

  # def create
  #   @category = Category.new(category_params)
  #   if @category.save!
  #     redirect_to categories_path
  #   else
  #     render :new
  #   end
  # end

  # def edit; end

  # def update
  #   if @category.update(category_params)
  #     redirect_to categories_path
  #   else
  #     render :edit
  #   end
  # end


  # def destroy
  #   @category.destroy
  #   redirect_to categories_path

  #   # respond_to do |format|
  #   #   format.html { render 'dashboard/goals' }
  #   #   format.js  { render :layout => false }
  #   # end
  # end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :cover)
  end
end
