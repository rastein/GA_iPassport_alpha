class PassportsController < ApplicationController
  def index
    @passport = Passport.all
  end

  def show
    @passport = get_passport
  end

  def new
      @passport = Passport.new
  end

  def create
    @passport = Passport.new(passport_params)
    if @passport.save
    redirect_to passport_new_path
    else
      render "new"
    end
  end

  def edit
    @passport = get_passport
  end

  def destroy
    @passport = get_passport
    @passport.destroy
    redirect_to passport_new_path
  end

private
  def get_passport
    Passport.find(params[:id])
  end

  def passport_params
    params.require(:passport_number, :date_of_issue, :date_of_expiration)
  end

end
