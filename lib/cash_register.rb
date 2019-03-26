require 'pry'
class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    item_total = price * quantity
    @total += item_total
    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def last_transaction(price, quantity)
      price * quantity
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end

