class RestaurantsController < ApplicationController

 RESTAURANTS = {
   1 => {name: "Dishoom", address: "Shoreditch, London", category:"italian"},
   2 => {name: "Sushi", address: "City, London", category:"rapida"},
   3 => {name: "Tiramisu", address: "Shoreditch, London", category:"italian"}
 }

  def index
    @restaurants = if params[:query].present?
      RESTAURANTS.select do |id, restaurant|
      restaurant[:category] == params[:query]
    end
  else
    RESTAURANTS
  end
  end
end
