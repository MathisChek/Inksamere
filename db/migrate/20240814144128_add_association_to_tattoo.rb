class AddAssociationToTattoo < ActiveRecord::Migration[7.1]
  def change
    add_reference :tattoos, :tattoueur, foreign_key: true
  end
end
