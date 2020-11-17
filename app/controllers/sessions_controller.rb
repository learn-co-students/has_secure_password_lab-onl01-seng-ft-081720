require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to controller: 'users', action: 'home'
  end

  def destroy
    session.clear
	  redirect_to home_path
  end
end
