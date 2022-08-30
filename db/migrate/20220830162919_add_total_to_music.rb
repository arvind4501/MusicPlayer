class AddTotalToMusic < ActiveRecord::Migration[7.0]
  def change
    add_column :musics, :total, :integer
  end
end
