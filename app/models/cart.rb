class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  def total_price
line_items.to_a.sum { |item| item.total_price }
end
  def add_card(card_id)
current_item = line_items.find_by_card_id(card_id)
if current_item
current_item.quantity += 1
else
current_item = line_items.build(card_id: card_id)
end
current_item
end

end
