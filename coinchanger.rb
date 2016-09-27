 def  coins_in_change(cents_received)
    coins = {}

   coins_value = {:dollar =>100, :half_dollar => 50, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
    coins_value.each do |coin, value|

   if cents_received >= value
    	  coins[coin] = cents_received /value
    	else
    		coins[coin] = 0

    end
    	  cents_received = cents_received % value
   	end
    	coins
  end  	


























