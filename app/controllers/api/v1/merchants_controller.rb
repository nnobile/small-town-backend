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



end
