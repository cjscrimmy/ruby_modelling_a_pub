require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../drink')

class TestPub < Minitest::Test
    def setup()
        @pub = Pub.new("Bjorks House", 150)
    end

    def test_get_name()
        assert_equal("Bjorks House", @pub.name)
    end

    def test_get_till_balance()
        assert_equal(150, @pub.till)
    end

    def test_start_with_no_drinks()
        assert_equal(0, @pub.drinks.count())
    end
end