class RestaurantsController < ApplicationController

  RESTAURANTS = [
    { name: "Kiin Kiin", address: "Nørrebro, København", food_type: "Asian" },
    { name: "Ninos Pizzeria", address: "Nørrebro, København", food_type: "Italian" },
    { name: "Grillen", address: "Nørrebro, København", food_type: "Burgers" },
    { name: "City Grill", address: "South Park, Colorado", food_type: "Asian" },
    { name: "Noma", address: "Holmen, København", food_type: "New Nordic" }
  ]

  def index
    food_type = params[:food_type]
    if food_type
      @restaurants = RESTAURANTS.select { |r| r[:food_type] == food_type }
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end
end
