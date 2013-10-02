class HousingsController < ApplicationController

  def new
    @housing = Housing.new
  end

  def create
    @housing = Housing.new(housing_params)

    if @housing.save
      redirect_to new_housing_path, notice: 'Your building was successfully recorded'
    else
      render 'new'
    end
  end

  protected
    def housing_params
      params.require(:housing).permit(:address, :city, :state, :zip_code, :description)
    end
end
