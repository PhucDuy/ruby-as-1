
class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :order_items
end
