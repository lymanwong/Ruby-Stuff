def stock_picker(stock_prices)
  final_price = []
  stock_prices_min = stock_prices[0...-2]
  stock_prices_max = stock_prices[2..-1]
  final_price << stock_prices.index(stock_prices_min.min)
  final_price << stock_prices.index(stock_prices_max.max)
  return final_price
end

# p stock_picker([17,3,6,9,15,8,6,1,10]) == [1,4]
