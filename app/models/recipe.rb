class Recipe < ActiveRecord::Base

  has_many :ingredients, inverse_of: :recipe
   validates :name, presence: true, length: { maximum: 100 }
   validates :instructions, presence: true, length: { maximum: 1000 }
   validates :cooking_time, presence: true, numericality: { greater_than: 0 }
  # TODO: Implement
end
