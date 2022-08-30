class AddNameToSinger < ActiveRecord::Migration[7.0]
  def change
    add_column :singers, :name, :string, unique: true
  end
end
