class CitiesController < ApplicationController
    
    # def index
    #     if params[:name]
    #         @city = City.where('name LIKE ?',"%#{params[:name]}%" )
            
    #     else 
    #         @city = City.all
    #     end
    # end 

    # def create

    # end

    def index 
        @cities = City.all
        @search = params["search"]
        if @search.present?
            @name = @search["name"]
            @cities = City.where(name: @name)
        end 
    end 
    

    def show
        @city = City.find(params[:id])
    end 

    # def cities_params
    #     params.require(:city).permit(:name, :state)
    # end

    
end
