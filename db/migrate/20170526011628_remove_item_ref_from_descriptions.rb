class RemoveItemRefFromDescriptions < ActiveRecord::Migration
  def change
    remove_reference :descriptions, :item, index: true, foreign_key: true
  end
end
