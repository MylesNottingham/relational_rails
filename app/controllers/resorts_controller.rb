class ResortsController < ApplicationController
  def index
    @resorts = Resort.all.order(:created_at)
  end

  def show
    @resort = Resort.find(params[:id])
    @guest_count = @resort.guests.count
  end
end
