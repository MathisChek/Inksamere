class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :firstame
      t.string :lasname

      t.timestamps
    end
  end
end
