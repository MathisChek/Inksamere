class CreateTattoueurs < ActiveRecord::Migration[7.1]
  def change
    create_table :tattoueurs do |t|
      t.string :fistname
      t.string :Lastname

      t.timestamps
    end
  end
end
