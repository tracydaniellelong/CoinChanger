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
		assert_equal({:nickel=>1, :penny=>4}, coin_changer(9))
	end
	def test_for_10_cents
		assert_equal({:dime=>1}, coin_changer(10))
	end
	def test_for_19_cents
		assert_equal({:dime=>1, :nickel=>1, :penny=>4}, coin_changer(19))
	end
	def test_for_20_cents
		assert_equal({}, coin_changer(20))
	end
	def test_for_25_cents
		assert_equal({:quarter=>1}, coin_changer(25))
	end

end