class Recipe < ApplicationRecord
  belongs_to :author
  belongs_to :category
  belongs_to :recipe_type

  validates :name, :presence => true, :uniqueness => true
  validates :ingredients, :steps, :image_url, :presence => true

  def recipelabel
    self.show.name + " Recipe: " + self.number.to_s
  end
end
