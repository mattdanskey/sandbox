class UsersController < ApplicationController

  def create
  User.create(params[:user])
  redirect_to users_path
  
  end
  
  def index
  @users = User.all
  
  end
  
  def new
  @user = User.new
  
  end

  def show
  @user = User.find(params[:id])
  
  end


end
