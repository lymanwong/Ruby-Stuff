#Profiling tells you what code is taking what amount of time

require 'profile'
class Calculator
  def self.count_to_large_number
    x = 0
    10000.times {x += 1}
  end

  def self.count_to_small_number
    x = 0
    1000.times { x += 1}
  end
end

Calculator.count_to_large_number
Calculator.count_to_small_number

=begin

  %   cumulative   self              self     total
 time   seconds   seconds    calls  ms/call  ms/call  name
 87.50     0.07      0.07        2    35.00    40.00  Integer#times
 12.50     0.08      0.01    10001     0.00     0.01  Calculator.count_to_large_number
  0.00     0.08      0.00        1     0.00     0.00  TracePoint#enable
  0.00     0.08      0.00        2     0.00     0.00  BasicObject#singleton_method_added
  0.00     0.08      0.00        1     0.00     0.00  Class#inherited
  0.00     0.08      0.00     1001     0.00     0.00  Calculator.count_to_small_number
  0.00     0.08      0.00        1     0.00     0.00  TracePoint#disable
  0.00     0.08      0.00        1     0.00    80.00  #toplevel

=end
