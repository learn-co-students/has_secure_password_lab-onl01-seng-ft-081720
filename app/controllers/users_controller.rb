class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create

        @user = User.new(user_params)
        if @user.password != @user.password_confirmation
            redirect_to new_user_path
        else 
            @user.save
            session[:user_id] = @user.id
            redirect_to users_path
        end

    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
