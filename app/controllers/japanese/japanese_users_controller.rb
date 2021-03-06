class Japanese::JapaneseUsersController < ApplicationController

  def index
    @japanese_users = Japanese.all
  end

  def new
    @japanese_user = Japanese.new
  end

  def create
    @japanese_user = Japanese.new(japanese_params)
    if @japanese_user.save
      redirect_to root_path
    else
      flash.now[:danger] = '登録に失敗しました'
      render :new
    end
  end

  private

  def japanese_params
    params.require(:japanese).permit(:name, :age, :email, :password, :password_confirmation)
  end
end
