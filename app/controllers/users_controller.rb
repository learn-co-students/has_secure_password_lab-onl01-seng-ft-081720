class UsersController < ApplicationController

    def new

    end

    def create
        if users_params[:password] == users_params[:password_confirmation]
            @user = User.create(users_params)
            session[:user_id] = @user.id
        else
           redirect_to '/users/new'
        end
    end





    private

    def users_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end