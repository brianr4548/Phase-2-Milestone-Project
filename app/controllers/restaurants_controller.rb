class RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
        @search = params["search"]
        if @search.present?
            @name = @search["name"]
            @restaurants = Restaurant.where(name: @name)
        end
    end
    

    def show
        @restaurant = Restaurant.find(params[:id])
        @recent_five = @restaurant.reviews.reverse.take(5)
    end 
end
