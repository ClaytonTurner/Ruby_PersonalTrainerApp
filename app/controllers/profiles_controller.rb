class ProfilesController < ApplicationController

  def show
    id = params[:id] # retrieve workout ID from URI route
    @profile = Profile.find(id) # look up workout by unique ID
    # will render app/views/workouts/show.<extension> by default
  end

  def index
    @profiles = Profile.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @profile = Profile.create!(params[:profile])
    flash[:notice] = "#{@profile.name} was successfully added."
    redirect_to workouts_path
  end

  def edit
    @profile = Profile.find params[:id]
  end

  def update
    @profile = Profile.find params[:id]
    @profile.update_attributes!(params[:profile])
    flash[:notice] = "#{@profile.name} was successfully updated."
    redirect_to workouts_path
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    flash[:notice] = "Profile '#{@profile.name}' destroyed."
    redirect_to workouts_path
  end


end
