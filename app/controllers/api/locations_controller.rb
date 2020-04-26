require 'pry'
class Api::LocationsController < ApplicationController

  def index
    if params
      query_date = params["date"] ? Date.parse(params["date"]) : nil
    end

  # locations = current_user.locations
    locations = Location.all

    if query_date
      locations = locations.where(created_at: date.midnight..date.end_of_day)
    end

    locations_by_day = locations.group_by { |l| l.created_at.to_date }

    render json: locations_by_day
  end

  def create
    location = Location.new(location_params)
    if location.save
      render json: location, status: :created
    else
      render json: location.errors, status: :bad_request
    end
  end

  private
  def location_params
    params.require(:location).permit(:user_id, :latitude, :longitude)
  end
end
