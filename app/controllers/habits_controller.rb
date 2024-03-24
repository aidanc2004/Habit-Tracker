class HabitsController < ApplicationController
  def index
    @habits = Habit.all
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.complete = false

    if @habit.save
      redirect_to :root
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy

    redirect_back(fallback_location: root_path) 
  end

  private
    def habit_params
      params.require(:habit).permit(:name)
    end
end
