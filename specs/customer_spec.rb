require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')

class CustomerTest < Minitest::Test
    def setup()
        @customer = Customer.new("Dougal", 100)
        @drink = Drink.new("Yar Yar", 7)
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
end