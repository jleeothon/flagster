class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.integer :bars
      t.integer :stripes
      t.integer :colours
      t.boolean :red
      t.boolean :green
      t.boolean :blue
      t.boolean :gold
      t.boolean :white
      t.boolean :black
      t.boolean :orange
      t.string :mainhue
      t.integer :circles
      t.integer :sunstars
      t.integer :crescent
      t.boolean :triangle
      t.boolean :icon
      t.boolean :animate
      t.boolean :text
      t.string :topleft
      t.string :botright
      t.timestamps null: false
    end
  end
end
