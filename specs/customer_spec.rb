require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')

class CustomerTest < Minitest::Test
    def setup()
        @customer = Customer.new("Dougal", 100, 40)
        @drink = Drink.new("Yar Yar", 7, 4)
    end

    def test_get_name()
        assert_equal("Dougal", @customer.name)
    end

    def test_get_wallet_amount()
        assert_equal(100, @customer.wallet)
    end

    def test_pay_for_drink
        @customer.pay_for_drink(@drink.price)
        assert_equal(93, @customer.wallet)
    end

    def test_get_age
        assert_equal(40, @customer.age)
    end

     def test_drunkeness_level_starts_at_zero
        assert_equal(0, @customer.drunkeness_level)
    end
    
    def test_drunkeness_level_increases
        @customer.increase_drunkeness(@drink.alcohol_level)
        assert_equal(4, @customer.drunkeness_level)
    end
end