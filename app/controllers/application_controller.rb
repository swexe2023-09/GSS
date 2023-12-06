class ApplicationController < ActionController::Base
    helper_method :current_manager
    private
        def current_manager
            if session[:login_uid]
                Manager.find_by(uid: session[:login_uid])
            end
        end
end
