class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :homecook, null: false, foreign_key: true
      t.string :availability
      t.float :price

      t.timestamps
    end
  end
end
