class AddCrossesToFlag < ActiveRecord::Migration
  def change
    add_column :flags, :crosses, :integer
  end
end
