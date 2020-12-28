class SessionsController < ApplicationController

   def reset_page_visits
      session.delete(:page_visits)

      # redirect_to movie_path()
      # worst case scenario server cannot get back to movie show page, go to movie index page
      redirect_back fallback_location: home_path
   end

end
