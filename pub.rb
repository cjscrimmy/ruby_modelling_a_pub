class Pub
    attr_reader :name, :till, :drinks

    def initialize(name, till, drinks)
        @name = name
        @till = till
        @drinks = drinks
    end

    def sell_drink(drink_to_sell, customer)
        if refuse_service(customer.drunkeness_level)
            return true
        else
            @drinks.delete(drink_to_sell)
            customer.pay_for_drink(drink_to_sell.price)
            @till += drink_to_sell.price
            customer.increase_drunkeness(drink_to_sell.alcohol_level)
        end
    end

    def is_underage?(customer_age)
        if customer_age < 18
            return true
        else
            return false
        end
    end

    def refuse_service(customer_drunkeness_level)
        if customer_drunkeness_level >= 30
            return true
        else
            return false
        end
    end


end