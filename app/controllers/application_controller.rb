class ApplicationController < ActionController::Base
    before_action :logged_in_user
    # before_action :authorization

    def logged_in_user 
        @current_user = Diner.find_by(id: session[:user_id])
    end

    # def authorization 
    #     redirect_to new_diner_path unless logged_in_user 
    # end
end
