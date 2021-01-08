class SessionsController < ApplicationController

    def new 
        @user = User.new
    end

    # def show 
    #     @user = User.find(params[:id])
    # end

    def create
      
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:id] = @user.id
            # byebug
            # session[:user_id] = user.id -> just something
            # I found, saving if needed
            redirect_to user_path(@user)
        else 
            flash[:errors] = 'Error: Email or Password Incorrect'
            redirect_to login_path
        end
    end

    def destroy 
        session.clear
        redirect_to login_path 
    end 
end
