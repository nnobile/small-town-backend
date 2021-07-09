class Api::V1::MerchantsController < ApplicationController

    def index
        @merchants = Merchant.all
        render json: @merchants
    end

    def create
        @merchant = Merchant.new(merchant_params)
        if @merchant.save
            render json: @merchant
        else
            render json: {error: 'Error creating merchant'}
        end
    end

    def show
        @merchant = Merchant.find(params[:id])
        render json: @merchant
    end

    def destroy
        @merchant = Merchant.find(params[:id])
        @merchant.destroy
    end

    private

    def merchant_params
        params.require(:merchant).permit(:merchant_name, :merchant_location, :merchant_category, :merchant_description, :merchant_image_url)
    end

end
