class LineItem < ApplicationRecord

  belongs_to :card
 belongs_to :cart

 def total_price
card.price * quantity
end
end
