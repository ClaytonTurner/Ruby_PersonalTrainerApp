class ProfilesController < ApplicationController

  def show
    id = params[:id] # retrieve workout ID from URI route
    @profile = Profile.find(id) # look up profile by unique ID
    # will render app/views/profiles/show.<extension> by default
  end

  def index
    @profiles = Profile.all
  end

  def new
    # default: render 'new' template
  end

  def create
    if params[:profile][:name] == "" 
      flash[:notice] = "Incomplete information"
    else
      @profile = Profile.create!(params[:profile])
      flash[:notice] = "#{@profile.name}, your profile has been successfully created."
    end    
    redirect_to workouts_path
  end

  def edit
    @profile = Profile.find params[:id]
  end

  def update
    @profile = Profile.find params[:id]
    @profile.update_attributes!(params[:profile])
    flash[:notice] = "Your profile has been successfully updated."
    redirect_to workouts_path
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    flash[:notice] = "Profile '#{@profile.name}' destroyed."
    session[:email] = nil
    redirect_to workouts_path
  end

  def login
#email = params[:email]
#redirect_to workouts_path :email => email
  end

	def home

	end
end
