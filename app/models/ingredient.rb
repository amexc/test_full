class Ingredient < ActiveRecord::Base

  belongs_to :recipe, inverse_of: :ingredients
  validates :name, presence: true, length: { maximum: 100 }
  # TODO: Implement
end
