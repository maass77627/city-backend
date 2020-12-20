class UsersController < ApplicationController

   

        def index 
            @users = User.all
            render json: @users
        end 
    
        def new
            @user = User.new
    
        end
    
        def create
           @user = User.new(user_params)
           if @user.save
            render json: @user
           else 
            render json: {errors: 'Error creating account'}
           end
        end 
    
        def show
            @user = User.find(params[:id])
            render json: @user
    
        end 
    
    
        def destroy
            @user = User.find(params[:id])
            @user.destroy
    
        end
    
        private 
    
       def user_params
        params.require(:user).permit(:username)
    
       end
    end
    
    end
    
