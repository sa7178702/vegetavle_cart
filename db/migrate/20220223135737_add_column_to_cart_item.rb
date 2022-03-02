class AddColumnToCartItem < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :price, :string
    add_column :cart_items, :quntity, :string
  end
end
