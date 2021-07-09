class Api::V1::ItemsController < ApplicationController

    before_action :set_merchant

    def index
        @items = @merchant.items
        render json: @items
    end

    def create
        @item = @merchant.items.new(item_params)
        if @item.save
            render json: @item
        else
            render json: {error: 'Error creating item'}
        end
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    # def destroy
    #     @item = Item.find(params[:id])
    #     @item.destroy
    # end

    private

    def set_merchant
        @merchant = Merchant.find(params[:merchant_id])
    end

    def item_params
        params.require(:item).permit(:item_name, :item_category, :item_description, :item_price, :item_image_url, :merchant_id)
    end




end
