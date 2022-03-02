class CartItemsController < ApplicationController
def index
    @cart = current_user.cart_items
end

# def current_cart
# 	if session[:cart_id]
# 	@current_cart ||= CartItem.find(session[:cart_id])
# 	end
# 	if session[:cart_id].nil?
# 	@current_cart = Cart.create!
# 	session[:cart_id] = @current_cart.id
# 	end
# 	@current_cart
# end

def checkout
	cart = current_user.cart
	cart_items = cart.cart_items
	total_cart_value = 0
	cart_items.each do |ci|
		total_cart_value = total_cart_value + (ci.quntity.to_i*ci.price.to_i)
	end
end

def destroy
	@cart = CartItem.find_by(id: params[:id])
	if @cart.present?
		@cart.destroy
	 	redirect_to cart_items_path
	end
end

private

def cart_params
	params.require(:CartItem).permit(:user_id ,:vegetable_id , :cart_id ,:price ,:quntity ,:vegetable_img)
end



end
