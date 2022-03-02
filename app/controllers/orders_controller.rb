class OrdersController < ApplicationController
  def index
    @address = current_user.addresses
  end

    def create
    #veg = current_user.cart.cart_items.find(params[:vegetable_id])
    # price = veg.price
    # quantity = veg.quantity
    # item_price = price*quantity
    #Order.create!(:user_id,:vegetable_id,:price,:quantity)
    byebug
     @order =current_user.cart_items.create(user_id: current_user.id ,vegetable_id: params[:id])
      redirect_to orders_path
    end
end
