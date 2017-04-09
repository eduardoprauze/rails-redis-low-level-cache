class CarsController < ApplicationController
  def index
    @cars = Rails.cache.fetch("cars", expires_in: 20.seconds) do
      @cars = Car.slow_query
    end
    render json: @cars
  end
end
