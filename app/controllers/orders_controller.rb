class OrdersController < ApplicationController
  def index
    @address = current_user.addresses
  end

  def create
    #veg = current_user.cart.cart_items.find(params[:vegetable_id])
    # price = veg.price
    # quantity = veg.quantity
    # item_price = price*quantity
    if params[:bunch_buy] == true
      params[:cartitems_id].each do |cart_id|
        cart = CartItem.find(cart_id)
        @vegetable = Vegetable.find(cart.vegetable_id,cart.price)
        @cart = Order.create!(user_id:current_user.id,vegetable_id: @vegetable,address_id:params[:address_id])
      end
    else
   @cart = Order.create!(user_id:current_user.id,vegetable_id: params[:vegetable_id],address_id:params[:address_id])
  end
  WelcomeMailer.send_greetings_notification(current_user).deliver
 redirect_to orders_path
     end
end
