class UsersController < ApplicationController
    def new 
    @user = User.new
    end 

def create 
 @user = User.new(user_params)
 if @user.password != @user.password_conformation
    redirect_to new_path
 end
  if @user.save
    session[:user_id] = @user.id
 end
end 
def show 
end

 private 

def user_params 
 params.require(:user).permit(:name,:password,:password_conformation)  
 end
end
