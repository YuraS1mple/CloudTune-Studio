class RegistrationsController < ApplicationController
  def new
    @mercedes_car = MercedesCar.new
  end

  def create
    @mercedes_car = MercedesCar.new(mercedes_car_params)
    if @mercedes_car.save
      redirect_to registrations_path, notice: 'Car registered successfully!'
    else
      render :new
    end
  end
  def index
    @cars = MercedesCar.all
  end
  

  private

  def mercedes_car_params
    params.require(:mercedes_car).permit(:model, :year, :color, :owner_name, :contact_info)
  end
end
