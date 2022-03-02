class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pin_code
      t.integer :user_id

      t.timestamps
    end
  end
end
