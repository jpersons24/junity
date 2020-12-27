class WelcomeController < ApplicationController

  def home
    @events = Event.all
  end

  private

  def sort_events_by_date
  end

end
