

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def total
    @total
  end

 def add_item(item, price, quantity = 1)
    item_total = price * quantity
    @total += item_total
    quantity.times do
      items << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  def items
    @items
  end
    def last_transaction(price, quantity)
    @last_transaction = price * quantity
  end
  def void_last_transaction
    @total = @total - @last_transaction
  end
end
