class AddIsoCodeToFlags < ActiveRecord::Migration
  def change
    add_column :flags, :iso, :string, limit: 5
  end
end
