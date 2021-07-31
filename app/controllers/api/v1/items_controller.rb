class Api::V1::ItemsController < ApplicationController

 before_action :set_merchant

    def index
        if @merchant
            @items = @merchant.items
        else 
            @items = Item.all
        end
        render json: @items
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def create
        @item = @merchant.items.new(item_params)
        if @item.save
            render json: @item
        else
            render json: {error: 'Error creating item'}
        end
    end


    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

    private

    def set_merchant
        @merchant = Merchant.find(params[:merchant_id])
    end

    def item_params
        params.require(:item).permit(:name, :category, :description, :price, :image_url, :merchant_id)
    end




end
