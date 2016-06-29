class AccountProfilesController < ApplicationController
  def index
    @account_profiles = AccountProfile.all
  end

  def new
    @account_profile = AccountProfile.new
  end

  def create
    @account_profile = AccountProfile.new(account_profile_params)
      if @account_profile.save
      redirect_to account_profiles_path
      else
        render "new"
      end
  end

  def edit
    @account_profile = get_account_profile
  end

  def update
    @account_profile = get_account_profile
    if @account_profile.update(account_profile_params)
      redirect_to account_profiles_path, notice: "Profile updated"
    else
      render "edit"
    end
  end

  def delete
    @account_profile = get_account_profile
    @account_profile.destroy
    redirect_to account_profiles_path
  end

  private
  def get_account_profile
    AccountProfile.find(params[:id])
  end

  def account_profile_params
    params.require(:account_profile).permit(:last_name, :first_name, :middle_name, :date_of_birth, :martial_status)
  end
end
