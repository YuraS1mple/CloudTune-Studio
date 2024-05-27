# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  def create
    if params.key?(:mercedes_car)
      @mercedes_car = MercedesCar.new(mercedes_car_params)
      if @mercedes_car.save
        redirect_to orders_path, notice: 'Замовлення через форму MercedesCar успішно створено.'
      else
        render :new
      end
    elsif params.key?(:order)
      @order = Order.new(order_params)
      if @order.save
        redirect_to orders_path, notice: 'Замовлення через форму Order успішно створено.'
      else
        render :new
      end
    end
  end
  

  def index
    @orders = Order.all
  end

  private

  def order_params
    params.require(:order).permit(:full_name, :email, :phone, :car_model, :color, :message)
  end

  def mercedes_car_params
    params.require(:mercedes_car).permit(:your_mercedes_car_specific_attributes)
  end
end
