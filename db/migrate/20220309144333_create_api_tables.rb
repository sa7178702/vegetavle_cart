class CreateApiTables < ActiveRecord::Migration[6.1]
  def change
    create_table :api_tables do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :auth

      t.timestamps
    end
  end
end
