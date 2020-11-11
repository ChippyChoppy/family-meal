class CreateHomecooks < ActiveRecord::Migration[6.0]
  def change
    create_table :homecooks do |t|
      t.string :name
      t.string :password
      t.string :email
      t.text   :bio
      t.string :neighborhood
      t.string :cuisine
      t.string :address
      t.string :open
      t.string :profile_pic
      t.string :home_pic

      t.timestamps
    end
  end
end
