class CreateTattoos < ActiveRecord::Migration[7.1]
  def change
    create_table :tattoos do |t|
      t.string :name

      t.timestamps
    end
  end
end
