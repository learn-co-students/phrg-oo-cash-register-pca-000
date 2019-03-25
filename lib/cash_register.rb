require 'pry'

class CashRegister
  attr_accessor :items, :discount, :last_item, :total, :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
  self.total +=price * quantity
    quantity.times do
      @items << title
  @last_item = [title, (price * quantity)]
      end
  end

  def apply_discount
    if self.discount != 0
      self.total = (total - (total * (self.discount/100.0)).to_i)
      self.total
      "After the discount, the total comes to $#{self.total}."
      # binding.pry
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = total - last_item[1]
  end
end
