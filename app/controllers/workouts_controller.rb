class WorkoutsController < ApplicationController

  def check_login
    profile_hash = params[:profile]
    user_email = profile_hash[:email]
    user_password = profile_hash[:password]
    if Profile.exists?(:email=>user_email,:password=>user_password)
      return user_email
    else
      return nil
    end
  end

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
    @exercises = Exercise.all
  end

  def create
    user_email = check_login
    unless @workout.nil? # User needs to be logged in for workout
      @profile = params[:email]
      @workout = Workout.create!(params[:workout])
      flash[:notice] = "#{@workout.title} was successfully created."
    end
    if params[:profile].nil?
      redirect_to workouts_path
    else
      
      if user_email.nil?
        redirect_to workouts_path
      else
        redirect_to workouts_path(:email=>user_email)
      end
    end
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
