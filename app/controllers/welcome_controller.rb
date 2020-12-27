class WelcomeController < ApplicationController

  def home
    @events = sort_events_by_date
  end

  private

  def sort_events_by_date
    Event.all.sort_by{ |event| event.date }
  end

end
