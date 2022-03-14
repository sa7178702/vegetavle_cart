class VegetablesController < ApplicationController
before_action :find_vegetable ,only: [:show ,:edit, :update , :destroy ,:add_to_cart]
before_action :current_cart, only: [:add_to_cart]
skip_before_action :verify_authenticity_token


def new
  @vegetable = Vegetable.new
end

def create
  @vegetable = Vegetable.new(vegetable_params)
    if @vegetable.save
      redirect_to home_index_path
    else
      render "new"
  end
end

def show
end

def edit
end

def update
  if @vegetable.update(vegetable_params)
    redirect_to home_index_path
  else
    render "edit"
  end
end

def destroy
  if @vegetable.destroy
    redirect_to home_index_path
  end
end

def add_to_cart

   #current_cart = current_user.cart ? current_user.cart : current_user.cart.create
  if current_cart.save
  @cart_items = current_cart.cart_items.create(user_id: current_user.id ,vegetable_id: params[:id],cart_id: current_cart.id,price: params[:price],quntity:1)
  redirect_to cart_items_path
 end
end

def incr_quantity
  update_quantity = CartItem.find(params[:id]).update(quntity: params["value"])
end


def decr_quantity
  update_quantity = CartItem.find(params[:id]).update(quntity: params["value"])
end


private

def vegetable_params
  params.require(:vegetable).permit(:name, :price, :category_id, :description, :vegetable_img)
end

def find_vegetable
  @vegetable = Vegetable.find_by(id: params[:id])
end

end
