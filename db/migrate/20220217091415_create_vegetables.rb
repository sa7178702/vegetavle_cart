class CreateVegetables < ActiveRecord::Migration[6.1]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
