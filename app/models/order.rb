class Order < ApplicationRecord
  has_many :order_items
  def delivery_cost
    return 20
  end
  def total
    order_items.reduce (0) {|sum ,item| return sum + item.total}
  end
end
