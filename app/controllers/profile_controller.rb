class ProfileController < ApplicationController
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
    redirect_to profile_new_path
    else
      render "new"
    end
  end

  def index
    @profile = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
      @profile = Profile.new
  end

  def edit
    @profile = get_profile
  end

  def delete
  end

  private
    def get_profile
      Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:last_name, :first_name)
    end
end
