class ExercisesController < ApplicationController

  def show
    id = params[:id] # retrieve workout ID from URI route
    #@workout = Workout.find(id)
    @exercise = Exercise.find(id) # look up exercise by unique ID
    # will render app/views/workouts/show.<extension> by default
  end

  def index
    # default: render 'index' template
  end

  def new
    # default: render 'new' template
  end

  def create
    # default: render 'create' template
  end

  def edit
    # default: render 'edit' template
  end

  def update
    # default: render 'update' template
  end

  def destroy
    # default: render 'destroy' template
  end


end
