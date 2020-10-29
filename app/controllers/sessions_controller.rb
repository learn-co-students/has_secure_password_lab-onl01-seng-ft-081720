class SessionsController < ApplicationController 


    def create 
    @user = User.find_by(params[:user][:id])
    if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
    end
end
    def destroy 
    end 



end 