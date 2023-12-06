class ApplicationController < ActionController::Base
    helper_method :current_member
    private
        def current_member
            if session[:login_uid]
                Member.find_by(uid: session[:login_uid])
            end
        end
end
