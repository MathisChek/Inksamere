class AddAssociationToFlash < ActiveRecord::Migration[7.1]
  def change
    add_reference :flashes, :tattoueur, foreign_key: true
  end
end
