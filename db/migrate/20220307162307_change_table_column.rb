class ChangeTableColumn < ActiveRecord::Migration[6.1]
  def change
      change_column :users, :mobno, :string
  end
end
