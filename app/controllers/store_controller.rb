class StoreController < ApplicationController
  def index

    @cards=Card.order(:title)
      @cart = current_cart
  end
end
