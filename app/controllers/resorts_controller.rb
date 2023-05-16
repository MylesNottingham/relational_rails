class ResortsController < ApplicationController
  def index
    @resorts = Resort.all.order(:created_at)
  end

  def show
    @resort = Resort.find(params[:id])
    @guest_count = @resort.guests.count
  end

  def new; end

  def create
    resort = Resort.new(
      {
        name: params[:resort][:name],
        max_capacity: params[:resort][:max_capacity],
        open_for_season: params[:resort][:open_for_season] == "true" ? true : false
      }
    )
    resort.save
    redirect_to "/resorts"
  end

  def edit
    @resort = Resort.find(params[:id])
  end

  def update
    resort = Resort.find(params[:id])
    resort.update(
      {
        name: params[:resort][:name],
        max_capacity: params[:resort][:max_capacity],
        open_for_season: params[:resort][:open_for_season] == "true" ? true : false
      }
    )
    resort.save
    redirect_to "/resorts/#{resort.id}"
  end

  def destroy
    Guest.where(resort_id: params[:id]).destroy_all
    Resort.destroy(params[:id])
    redirect_to "/resorts"
  end
end
