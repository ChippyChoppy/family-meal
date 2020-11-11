class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :homecook, null: false, foreign_key: true
      t.references :diner, null: false, foreign_key: true
      t.integer :party_size
      t.date :date
      t.integer :time

      t.timestamps
    end
  end
end
