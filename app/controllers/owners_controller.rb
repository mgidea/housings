class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(housing_params)

    if @owner.save
      redirect_to new_owner_path, notice: 'The Owner was successfully recorded'
    else
      render 'new'
    end
  end

  protected
    def housing_params
      params.require(:owner).permit(:first_name, :last_name, :email, :company)
    end
end

