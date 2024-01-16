class ApplicationController < ActionController::Base
    helper_method :current_member
    private
        def current_member
            if session[:member_uid]
                Member.find_by(uid: session[:member_uid])
            end
        end
        
    helper_method :current_manager
    private
        def current_manager
            if session[:manager_uid]
                Manager.find_by(uid: session[:manager_uid])
            end
        end
end
