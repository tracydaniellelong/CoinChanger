require 'minitest/autorun'
require_relative 'coinchanger.rb'

class Testing < Minitest::Test
	def test_for_1_equals_1
		assert_equal(1, 1)
	end
	def test_for_1_cents
		assert_equal({:penny => 1}, coin_changer(1))
	end
	def test_for_2_cents
		assert_equal({:penny=>2}, coin_changer(2))
	end
	def test_for_5_cents
		assert_equal({:nickel=>1}, coin_changer(5))
	end
	def test_for_9_cents
		assert_equal({}, coin_changer(9))
	end

end