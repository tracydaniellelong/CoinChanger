def coinChanger(cents)
	coins = {
		:quarter => 25, 
		:dime => 10,
		:nickel => 5,
		:penny => 1
	}
	change = {}
	coins.each do |coin, value|
		p coin
		p value
		change = {coin => cents / value}
		cents %= value
	end
	return change
end