class UsersController < ApplicationController

    before_action :not_logged_in, only: [:show]

    def show 
        @user = User.find(params[:id])
    end
    
    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            session[:id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end



end
