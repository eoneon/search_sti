class CreateJoinTableItemDescription < ActiveRecord::Migration
  def change
    create_table :items_descriptions, id: false do |t|
      t.integer :item_id
      t.integer :description_id
    end

    add_index :items_descriptions, :item_id
    add_index :items_descriptions, :description_id
  end
end
