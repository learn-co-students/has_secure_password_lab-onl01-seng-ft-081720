class SessionsController < ApplicationController


    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])

        if !@user.authenticate(params[:user][:password])
            redirect_to(controller: 'sessions', action: 'new')
        else
            session[:user_id] = @user.id
        end
    end

end