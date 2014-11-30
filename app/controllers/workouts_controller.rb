class WorkoutsController < ApplicationController

  def show
    id = params[:id] # retrieve workout ID from URI route
    @workout = Workout.find(id) # look up workout by unique ID
    # will render app/views/workouts/show.<extension> by default
    @creator = Profile.find(@workout)
  end

  def index
    sort = params[:sort]
    @profile = params[:email]
    case sort
    when 'name'
       ordering,@title_header = {:order => :name}, 'hilite'
    when 'profile_id'
       ordering,@creator_header = {:order => :profile_id}, 'hilite'
    end
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
