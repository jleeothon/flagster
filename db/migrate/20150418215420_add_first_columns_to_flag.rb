class AddFirstColumnsToFlag < ActiveRecord::Migration
  def change
    add_column :flags, :name, :string
    add_column :flags, :landmass, :string
    add_column :flags, :zone, :string
    add_column :flags, :area, :integer
    add_column :flags, :population, :integer
    add_column :flags, :language, :string
    add_column :flags, :religion, :string
    add_index :flags, :name
  end
end
