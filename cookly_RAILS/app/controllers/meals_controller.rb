class MealsController < ApplicationController

  def index
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)
    @cook = Cook.find(params[:meal][:cook_id])
    @meal.user_id = current_user.id
    @meal.cook = @cook

    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  def edit
    @cooks = Cook.all
    @meal = Meal.find(params[:id])
  end

  def update
    #get cook_id out of params and @cook= Cook.find(params[:cook_id]) and set @meal.cook to @cook, then save.
    @meal = Meal.find(params[:id])
    if @meal.update_attributes(meal_params)
      redirect_to meal_path
    else
      render :edit
    end



  end

  private

  def meal_params
    params.require(:meal).permit(:date, :time, :location, :info, :price, :cook_id)
  end

end











