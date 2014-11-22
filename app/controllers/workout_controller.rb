class WorkoutsController < ApplicationController
#blessed
  def show
    id = params[:id] # retrieve workout ID from URI route
    @workout = Workout.find(id) # look up workout by unique ID
    # will render app/views/workouts/show.<extension> by default
  end

  def index
    @all_workouts = Workout.all_workouts
    @workouts = Workout.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @workout = Workout.create!(params[:workout])
    flash[:notice] = "#{@workout.title} was successfully created."
    redirect_to workouts_path
  end

  def edit
    @workout = Workout.find params[:id]
  end

  def update
    @workout = Workout.find params[:id]
    @workout.update_attributes!(params[:workout])
    flash[:notice] = "#{@workout.title} was successfully updated."
    redirect_to workouts_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    flash[:notice] = "Workout '#{@workout.title}' destroyed."
    redirect_to workouts_path
  end


end
