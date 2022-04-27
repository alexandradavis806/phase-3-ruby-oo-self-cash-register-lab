
require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        # @d
    end

    def add_item(title, price, quantity=1)
        # @total += price * quantity
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times do |i|
            @items << title
        end
    end

    def apply_discount
        if @discount != 0
            @total = total - (total*discount/100.0)
            "After the discount, the total comes to $#{total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end

cash_register = CashRegister.new(0)

# binding.pry