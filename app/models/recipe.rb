class Recipe < ActiveRecord::Base

  has_many :ingredients, inverse_of: :recipe

  # TODO: Implement
end
