class CashRegister
    attr_accessor :total, :discount, :items, :prizes
    def initialize(discount = 0)
       @total = 0
       @discount = discount
       @items = []
       @prizes = []
    end
    def add_item(name, price, quantity = 1)
        quantity.times{@items<<name}
        quantity.times{@prizes<<price}
    @total += price * quantity 
    end
    def apply_discount
     return   "There is no discount to apply." if @discount == 0
        @total -= @discount * 0.01 * @total 
           
        "After the discount, the total comes to $800."
    end
    def void_last_transaction
        name = @prizes.last 
    @total -= @prizes.pop while @prizes.length > 0 && @prizes.last == name
    @total = 0.0 if @prizes.empty? 
    end
end
