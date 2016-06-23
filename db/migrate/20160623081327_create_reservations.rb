class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.references :Bedroom, foreign_key: true
      t.references :Customer, foreign_key: true

      t.timestamps
    end
  end
end
