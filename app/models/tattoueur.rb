class Tattoueur < ApplicationRecord
  has_many :tattoos
  has_many :flashes
  has_many :appointments

  has_many :clients, through: :appointments
end
