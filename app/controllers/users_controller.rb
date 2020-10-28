class UsersController < ApplicationController
    def create
        # binding.pry
        @user = User.create(user_params)
        if @user.password == @user.password_confirmation
            session[:user_id] = @user.id
        else
            redirect_to '/new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end