class Customer

    attr_reader :name, :wallet, :age, :drunkeness_level

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age
        @drunkeness_level = 0
    end

    def pay_for_drink(drink_price)
        @wallet -= drink_price
    end

    def increase_drunkeness(alcohol_level)
        @drunkeness_level += alcohol_level
    end
end