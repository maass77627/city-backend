class CitiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    

    def index 
        @cities = City.all
        render json: @cities
    end 

    def new
        @city = City.new

    end

    def create
        # binding.pry
        
       @city = City.create(city_params)
       if @city
        render json: @city
       else 
       render json: {errors: 'Error creating city'}
        
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
    params.require(:city).permit(:name, :state, :description)

   end
end
