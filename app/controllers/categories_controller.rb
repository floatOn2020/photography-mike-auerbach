class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :destroy]

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

  def edit
    # @goal = find_goal
    # @milestones = @goal.milestones
    # @milestones.each do |milestone|
    #   milestone.done = false
    # end
    # # @goal.milestones.build
    # @activities = Activity.all
  end

  def update
    # @goal = Goal.new(goal_params)
    # @goal.user = current_user
    # @activity = Activity.find(params[:goal][:activity][:name])
    # @goal.activity_id = @activity.id
    # @goal.completed = false
    # if @goal.save!
    #   redirect_to dashboard_goals_path
    # else
    #   render :edit
    # end
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
