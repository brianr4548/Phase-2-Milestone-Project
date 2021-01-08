class ApplicationController < ActionController::Base

    def current_user
        User.find_by(id: session[:id])
    end
    helper_method :current_user
    
    def logged_in?
        !!current_user
    end
    helper_method :logged_in?

    def not_logged_in
        redirect_to login_path unless logged_in?
    end

end

