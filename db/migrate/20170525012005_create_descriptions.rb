class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :type
      t.string :kind
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
