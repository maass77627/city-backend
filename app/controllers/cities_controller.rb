class CitiesController < ApplicationController

    def index 
        @cities = City.all
        render json: @cities
    end 

    def new
        @city = City.new

    end

    def create
       @city = City.new(city_params)
       if @city.save
        render json: @city
       else 
        render json: {errors: 'Error creating account'}
       end
    end 

    def show
        @city = City.find(params[:id])
        render json: @city

    end 


    def destroy
        @city = City.find(params[:id])
        @city.destroy

    end

    private 

   def city_params
    params.require(:city).permit(:name, :state, :user_id, :description)

   end
end
