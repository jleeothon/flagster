class RemoveBinariesFromFlags < ActiveRecord::Migration
  def change
    remove_column :flags, :red
    remove_column :flags, :green
    remove_column :flags, :blue
    remove_column :flags, :gold
    remove_column :flags, :white
    remove_column :flags, :black
    remove_column :flags, :orange
    remove_column :flags, :crescent
    remove_column :flags, :triangle
    remove_column :flags, :icon
    remove_column :flags, :animate
    remove_column :flags, :text
    remove_column :flags, :topleft
    remove_column :flags, :botright
    add_column :flags, :red, :integer
    add_column :flags, :green, :integer
    add_column :flags, :blue, :integer
    add_column :flags, :gold, :integer
    add_column :flags, :white, :integer
    add_column :flags, :black, :integer
    add_column :flags, :orange, :integer
    add_column :flags, :crescent, :integer
    add_column :flags, :triangle, :integer
    add_column :flags, :icon, :integer
    add_column :flags, :animate, :integer
    add_column :flags, :text, :integer
    add_column :flags, :topleft, :integer
    add_column :flags, :botright, :integer
  end
end
