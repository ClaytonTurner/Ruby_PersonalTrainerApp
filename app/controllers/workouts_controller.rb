class WorkoutsController < ApplicationController

  def check_login
    user_email = params[:email]
    if user_email == "Email"
      user_email = params[:profile][:email]
      user_password = params[:profile][:password]
      if Profile.where("email = ? AND password = ?",user_email,user_password).first.nil?
        flash[:notice] = "Incorrect Login"
      else
        user_email = Profile.where("email = ?",user_email).first.id()
      end
    end
    if user_email.nil?
      user_email = session[:email]
    end
    if Profile.exists?(user_email)
      session[:email] = user_email
      return user_email
    else
      return nil
    end
  end

  def show
    id = params[:id] # retrieve workout ID from URI route
    @workout = Workout.find(id) # look up workout by unique ID
    # will render app/views/workouts/show.<extension> by default
    @creator = Profile.find(@workout.profile_id)
    if session[:email]
      @profile = session[:email]
    end
  end

  def index
    @profile = params[:email]
    if @profile.nil? and session[:email].present?
      redirect_to workouts_path(:email => session[:email])
    end
    @workouts = Workout.all
  end

  def new
    # default: render 'new' template
    @exercises = Exercise.all
    @profile = params[:email]
  end

  def create
    user_email = check_login
    @exercises = Exercise.all
    unless params[:workout].nil? # User needs to be logged in for workout
      workout_hash = params[:workout]
      workout_hash[:profile_id] = session[:email]
      @workout = Workout.create!(workout_hash)
      @exercises.each do |exercise|
        if params.keys.include? exercise.name
          @workout.exercises << exercise
        end
      end
#@workout.exercises << Exercise.find(
      flash[:notice] = "#{@workout.name} was successfully created."
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
    Exercise.all.each do |exercise|
      if params.keys.include? exercise.name and not @workout.exercises.include? exercise 
        @workout.exercises << exercise
      elsif @workout.exercises.include? exercise and not params.keys.include? exercise.name
        @workout.exercises.delete exercise
      end
    end
    flash[:notice] = "#{@workout.name} was successfully updated."
    redirect_to workouts_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    flash[:notice] = "Workout '#{@workout.name}' destroyed."
    redirect_to workouts_path
  end


end
