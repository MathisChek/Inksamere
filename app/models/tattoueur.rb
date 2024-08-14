class Tattoueur < ApplicationRecord
  has_many :tattoos
  has_many :flashs
  has_many :appointments
end
