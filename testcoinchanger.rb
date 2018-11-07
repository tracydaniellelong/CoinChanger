require 'minitest/autorun'
require_relative 'coinchanger.rb'

class Testing < Minitest::Test
	def test_for_1_equals_1
		assert_equal(1, 1)
	end
	def test_for_11_cents
		assert_equal("dime => 1, penny => 1", coinChanger(11))
	end

end