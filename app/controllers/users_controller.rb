class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def new
  end

  def show
    # raise params.inspect
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
