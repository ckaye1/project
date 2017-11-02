class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :fname
      t.string :lname
      t.string :asuid
      t.date :year
      t.string :make
      t.string :model
      t.string :driverslicense

      t.timestamps
    end
  end
end
