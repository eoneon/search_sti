class AddDescriptionToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :description, :string
  end
end
