class American::AmericanUsersController < ApplicationController

  def index
    @american_users = American.all
  end

  def new
    @american_user = American.new
  end

  def create
    @american_user = American.new(american_params)
    if @american_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def american_params
    params.require(:american).permit(:name, :age, :email, :password, :password_confirmation)
  end
end
