require 'pry'

class CashRegister

  attr_accessor  :discount, :total, :item, :last_transaction


  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount
      new_discount = (1 - (discount.to_f / 100.to_f)) * self.total
      self.total = new_discount
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def last_transaction(price, quantity)
      price * quantity
  end

  def void_last_transaction
    @total = @total - @last_transaction
    @total
  end

  end
