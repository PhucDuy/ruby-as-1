class OrderItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :order
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create

  def total
    if food_item && quantity
      return food_item.price * quantity
    end
    return 0
  end
end
