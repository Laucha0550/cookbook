class Author < ApplicationRecord
  belongs_to :category
  has_many :recipes


  validates :first_name, :last_name, :presence => true
end
