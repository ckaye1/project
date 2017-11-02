class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :to
      t.string :from
      t.date :date
      t.time :ltime
      t.integer :seats
      t.decimal :fare
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :trips, :user_id

  end
end
