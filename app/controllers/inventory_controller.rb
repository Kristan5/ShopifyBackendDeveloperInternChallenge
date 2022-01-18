require 'csv'

class InventoryController < ApplicationController

  def index
    @items = Inventory.all

    respond_to do |format|
      format.html
      format.csv { render text: @items.to_csv }
    end
  end

  def new
    @item = Inventory.new
  end

  def destroy
    @item = Inventory.find(params[:id])
    @item.destroy
    redirect_to :root
  end 

  def create
    @item = Inventory.new(inventory_params)

    @item.save
    redirect_to :root
  end



  private

  def inventory_params
    params.require(:inventory).permit(:description, :quantity, :price)
  end
end
