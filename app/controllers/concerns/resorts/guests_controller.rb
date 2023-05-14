class Resorts::GuestsController < ApplicationController
  def index
    @resort = Resort.find(params[:id])
    @guests = @resort.guests
  end
end
