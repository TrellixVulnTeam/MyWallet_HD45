class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new
    @user.first_name = params [:user][:first_name]
    @user.last_name = params [:user][:last_name]
    @user.email = params [:user][:email]
    @user.password = params [:user][:password]
    @user.save!

    redirect_to :action => :index
  end

  def new
    @user = User.new
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!

    redirect_to :action => :index
  end

  def edit
    @user = User.find(params[:id])
  end
end
