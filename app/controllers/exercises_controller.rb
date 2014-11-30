class ExercisesController < ApplicationController

  def show
    id = params[:id] # retrieve workout ID from URI route
    @exercise = Exercise.find(id) # look up workout by unique ID
    # will render app/views/workouts/show.<extension> by default
  end

  def index
    @exercises = Exercise.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @exercise = Exercise.create!(params[:profile])
    flash[:notice] = "#{@profile.name} was successfully added."
    redirect_to workouts_path
  end

  def edit
    @exercise = Exercise.find params[:id]
  end

  def update
    @exercise = Exercise.find params[:id]
    @exercise.update_attributes!(params[:profile])
    flash[:notice] = "#{@exercise.name} was successfully updated."
    redirect_to workouts_path
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    flash[:notice] = "Profile '#{@exercise.name}' destroyed."
    redirect_to workouts_path
  end


end
