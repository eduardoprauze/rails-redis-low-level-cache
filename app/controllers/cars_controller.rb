class CarsController < ApplicationController
  def index
    @cars = Rails.cache.fetch("cars", expires_in: 1.minute) do
      @cars = Car.slow_query
    end
    render json: @cars
  end
end
