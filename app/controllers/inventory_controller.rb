require 'csv'

class InventoryController < ApplicationController

  def index
    @inventory_items = Inventory.all

    respond_to do |format|
      format.html
      format.csv { render text: @inventory_items.to_csv }
    end
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    @inventory.save
    redirect_to :root
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])
    @inventory.update(inventory_params)
    redirect_to :root
  end
  
  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to :root
  end 

  private

  def inventory_params
    params.permit(:description, :quantity, :price)
  end
end
