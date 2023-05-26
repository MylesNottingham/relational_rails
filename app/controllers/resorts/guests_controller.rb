class Resorts::GuestsController < ApplicationController
  def index
    @resort = Resort.find(params[:id])
    @guests = params[:sorted] == "true" ? @resort.guests.order(:name) : @resort.guests
  end

  def new; end

  def create
    guest = Guest.new(
      {
        name: params[:guest][:name],
        pass_holder: params[:guest][:pass_holder] == "true",
        days_active: params[:guest][:days_active],
        resort_id: params[:guest][:resort_id]
      }
    )
    guest.save
    redirect_to "/resorts/#{guest.resort_id}/guests"
  end
end
