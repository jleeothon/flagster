class AddSaltiresToFlags < ActiveRecord::Migration
  def change
    add_column :flags, :saltires, :integer
  end
end
