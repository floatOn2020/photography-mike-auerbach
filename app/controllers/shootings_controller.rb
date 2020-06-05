class ShootingsController < ApplicationController
  before_action :find_shooting, only: [:show, :edit]

  def show

  end

  # def new
  #   @shooting = Shooting.new
  # end

  # def create
  #   @shooting = Shooting.new(shooting_params)
  #   @category = @shooting.category

  #   if @shooting.save!
  #     # @shooting.photos.attach(params[:photos])
  #     redirect_to category_path(@shooting.category)
  #   else
  #     render :new
  #   end
  # end

  # def edit; end

  # def update
  #   @shooting = Shooting.new(shooting_params)
  #   if @shooting.update(shooting_params)
  #     redirect_to category_path(@shooting.category)
  #   else
  #     render :edit
  #   end
  # end


  # def destroy
  #   @shooting.destroy
  #   redirect_to shootings_path

  #   # respond_to do |format|
  #   #   format.html { render 'dashboard/goals' }
  #   #   format.js  { render :layout => false }
  #   # end
  # end

  private

  def find_shooting
    @shooting = Shooting.find(params[:id])
  end

  def shooting_params
    params.require(:shooting).permit(:who_or_what, :date, :place, :cover, :category_id, photos: [])
  end
end
