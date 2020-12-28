class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])

    # if session[:page_visits]
    #   session[:page_visits] = session[:page_visits].to_i + 1
    # else
    #   session[:page_visits] = 1
    # end

    
    # session[:page_vists] has value \\ (or), set it equal to zero
    session[:page_visits] ||= 0
    # increment value of session[:page_visits] by 1
    session[:page_visits] = session[:page_visits].to_i + 1

  end

end
