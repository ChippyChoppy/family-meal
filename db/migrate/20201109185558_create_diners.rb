class CreateDiners < ActiveRecord::Migration[6.0]
  def change
    create_table :diners do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :location
      t.string :dietary_restriction
      t.string :profile_pic

      t.timestamps
    end
  end
end
