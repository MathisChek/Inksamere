class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :data
      t.string :lenght
      t.integer :price

      t.references :tattoueur, foreign_key: true

      t.timestamps
    end
  end
end
