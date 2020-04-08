require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink.rb')

class TestDrink < Minitest::Test
    def setup()
        @drink = Drink.new("Beery McBeerface", 5)
    end

    def test_get_name()
        assert_equal("Beery McBeerface", @drink.name)
    end

    def test_get_wallet()
        assert_equal(5, @drink.price)
    end
end
    
    