class SessionsController < ApplicationController

   def reset_page_visits
      session.delete(:page_visits)

      # redirect_to movie_path()
      # worst case scenario server cannot get back to movie show page, go to movie index page
      redirect_back fallback_location: home_path
   end

   def logout
      session.delete(:user_id)

      redirect_to new_user_path
   end

   # new session!
   def new

   end

   # create session!
   def create
      @user = User.find_by(username: params[:session][:username])

      if @user && @user.authenticate(params[:session][:password])
         session[:user_id] = @user.id
         redirect_to user_path(@user)
      else  
         flash[:error] = "Username or Password incorrect"
         redirect_to new_session_path
      end
   end

end
