class AddColumnToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :price, :string
    add_column :orders, :quantity, :string
  end
end
