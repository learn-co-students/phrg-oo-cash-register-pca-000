class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @quantity = quantity
    @price = price
    @total += @price * quantity
    quantity.times { @items << @title }
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@discount * 10)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price
  end

end
