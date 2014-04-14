class ManufacturersController < ApplicationController

  def new
    @manufacturer = Manufacturer.new
  end

  def index
    @manufacturers = Manufacturer.all
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      redirect_to new_manufacturer_path, notice: 'Manufacturer was successfully added'
    else
      render :new
    end
  end


  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end


end



