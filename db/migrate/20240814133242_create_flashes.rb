class CreateFlashes < ActiveRecord::Migration[7.1]
  def change
    create_table :flashes do |t|
      t.string :name

      t.timestamps
    end
  end
end
