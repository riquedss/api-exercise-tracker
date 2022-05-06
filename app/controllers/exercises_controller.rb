class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :update]
  def index
    @exercise = Exercise.all 
    render json: @exercise
  end

  def show
    if @exercise
      render json: @exercise, status: :ok
    else
      render json: { message: "Exercise not foud" } , status: :not_foud
    end
  end

  def create
    @exercise = Exercise.new(params_exercise)
    if @exercise.save
      render json: @exercise, status: :created
    else
      render json: { message: "Could not create this exercise" }, status: 422
    end
  end

  def update
    if @exercise.update(params_exercise)
      render json: @exercise, status: :ok
    else
      render json: { message: "Exercise not foud" }, status: :not_foud
    end
  end

  private
  def params_exercise
    params.require(:exercise).permit(:description, :duration, :date, :user_id)
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
