class Pub
    attr_reader :name, :till, :drinks

    def initialize(name, till, drinks)
        @name = name
        @till = till
        @drinks = drinks
    end

    def sell_drink(drink_to_sell, customer)
        @drinks.delete(drink_to_sell)
        customer.pay_for_drink(drink_to_sell.price)
        @till += drink_to_sell.price
    end
end