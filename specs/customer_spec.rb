require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')

class CustomerTest < Minitest::Test
    def setup()
        @customer = Customer.new("Dougal", 100)
    end

    def test_get_name()
        assert_equal("Dougal", @customer.name)
    end

    def test_get_wallet_amount()
        assert_equal(100, @customer.wallet)
    end
end