class ApplicationController < ActionController::Base


    def require_admin
      if current_user
        unless current_user.admin == true
          #store_location
          flash[:notice] = "you must be an admin to view this page"
          redirect_to welcome_index_url
          return false
        end
    else
      flash[:notice] = "You must be logged in to access this page"
      redirect_to welcome_index_url
      end      
    end

    def require_staff
      if current_user
        unless current_user.staff == true
          #store_location
          flash[:notice] = "you must be an staff to to do that"
          redirect_to welcome_index_url
          return false
        end
      else
        flash[:notice] = "You must be logged in to access this page"
        redirect_to welcome_index_url
      end
    end

    def require_participant
      if current_user
        unless current_user.participant == true
          #store_location
          flash[:notice] = "you must be an staff to to do that"
          redirect_to welcome_index_url
          return false
        end
    else
      flash[:notice] = "You must be logged in to access this page"
      redirect_to welcome_index_url
      end
    end

    def require_user
      unless current_user
        #store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to welcome_index_url
        return false
      end
    end

    def require_no_user
      if current_user
        #store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to account_url
        return false
      end
    end
    
    #def store_location
    #  session[:return_to] = request.request_uri
    #end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

    protected

    def handle_unverified_request
      # raise an exception
      fail ActionController::InvalidAuthenticityToken
      # or destroy session, redirect
      if current_user_session
        current_user_session.destroy
      end
      redirect_to root_url
    end
    helper_method :current_user_session, :current_user

    private
      def current_user_session
        return @current_user_session if defined?(@current_user_session)
        @current_user_session = UserSession.find
      end
  
      def current_user
        return @current_user if defined?(@current_user)
        @current_user = current_user_session && current_user_session.user
      end
  
end
