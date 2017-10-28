class CombineItemsInCart < ActiveRecord::Migration[5.0]
  def change
    # replace multiple items for a single card in a cart with a single item
Cart.all.each do |cart|
# count the number of each card in the cart
sums = cart.line_items.group(:card_id).sum(:quantity)
sums.each do |card_id, quantity|
if quantity > 1
# remove individual items
cart.line_items.where(card_id: card_id).delete_all
# replace with a single item
cart.line_items.create(card_id: card_id, quantity: quantity)
end
end
end
  end
end
