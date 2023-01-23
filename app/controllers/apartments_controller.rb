class ApartmentsController < ApplicationController

    def create
        apartment = Apartment.create(apt_params)
        render json: apartment
    end

    def index
        apartment = Apartment.all
        render json: apartment
    end

    def show 
        apartment = Apartment.find_by(id: params[:id])
        render json: apartment,  include: :leases
    end 
    
    def update 
        apartment = Apartment.find_by(id: params[:id])
        apartment.update(number: params[:number])
        render json: apartment
    end


    private 

    def apt_params 
        params.permit(:number)
    end 
end
