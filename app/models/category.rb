class Category < ApplicationRecord
  has_many :recipes
  has_many :authors

  validates :name, :presence => true, :uniqueness => true
  
end
