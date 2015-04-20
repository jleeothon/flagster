class AddQuartersToFlags < ActiveRecord::Migration
  def change
    add_column :flags, :quarters, :integer
  end
end
