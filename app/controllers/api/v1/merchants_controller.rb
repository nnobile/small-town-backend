class Api::V1::MerchantsController < ApplicationController

    def index
        # binding.pry
        @merchants = Merchant.all
        render json: @merchants
    end

    def show
        @merchant = Merchant.find(params[:id])
        render json: @merchant
    end

    def create
        @merchant = Merchant.new(merchant_params)
        if @merchant.save
            render json: @merchant
        else
            render json: {error: 'Error creating merchant'}
        end
    end

    def destroy
        @merchant = Merchant.find(params[:id])
        @merchant.destroy
    end

    private

    def merchant_params
        params.require(:merchant).permit(:name, :location, :category, :description, :image_url)
    end

end
