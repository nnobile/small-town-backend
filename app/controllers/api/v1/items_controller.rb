class Api::V1::ItemsController < ApplicationController

    def index
        @items = Item.all
        render json: @items
    end

    def create 
    end

    def show
    end

    def destroy
    end

    private
    def item_params
        params.require(:item).permit(:item_name, :item_category, :item_description, :item_price, :item_image_url, :merchant_id)
    end




end
