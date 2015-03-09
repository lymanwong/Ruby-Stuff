def stock_picker

end
def stock_picker(stock_prices)
  new_price_difference = 0
  current_price_difference = 0
  counter = stock_prices.length - 1
  stock_prices.each do |price|
    # p price
    # p stock_prices[counter]

    counter -= 1
    # if new_price_difference > current_price_difference
    #   current_price_difference = new_price_difference
    # end
  end
  # return current_price_difference
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# == [1,4]
