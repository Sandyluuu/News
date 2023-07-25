class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        posts_path
    end

    def after_sign_in_path_for(_resource_or_scope)
        new_user_session_path
    end
    
end
