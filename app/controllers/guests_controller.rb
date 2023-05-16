class GuestsController < ApplicationController
  def index
    @guests = Guest.where(pass_holder: true)
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    guest = Guest.find(params[:id])
    guest.update(
      {
        name: params[:guest][:name],
        pass_holder: params[:guest][:pass_holder] == "true" ? true : false,
        days_active: params[:guest][:days_active],
        resort_id: params[:guest][:resort_id]
      }
    )
    guest.save
    redirect_to "/guests/#{guest.id}"
  end

  def destroy
    Guest.destroy(params[:id])
    redirect_to "/guests"
  end
end
