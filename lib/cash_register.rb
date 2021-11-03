class CashRegister
    attr_accessor :total, :discount
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @item_list=[]
    end
    def add_item title, price, quantity=1
        new_total = @total + price.to_f*quantity.to_i
        @value = price*quantity.to_i
        @item_list = @item_list+[title]*quantity.to_i
        @total = new_total
    end
    def apply_discount
        if @discount > 0
        discount_total = @total - @total*@discount/100
        @total= discount_total
        "After the discount, the total comes to $#{discount_total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @item_list 
    end
    def void_last_transaction
        @total = @total-@value
    end
end
