class AddColumnToSinger < ActiveRecord::Migration[7.0]
  def change
    add_column :singers, :first_name, :string
    add_column :singers, :last_name, :string
    add_column :singers, :age, :integer
    add_column :singers, :nick_name, :string
  end
end
