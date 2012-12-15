# Basic controller for interacting with User

class UsersController < ApplicationController
  before_filter :authenticate_user!

  # Show all users
  def index
    @users = User.all
  end

  # Show information about specified user
  def show
    @user = User.find(params[:id])
  end

end
