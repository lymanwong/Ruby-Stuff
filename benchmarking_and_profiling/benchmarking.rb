#Benchmarking mesaures the total time it takes to achieve something and comparing those results between different versions of code.
require 'benchmark'

# puts Benchmark.measure{10000.times{print "."}}
#=> 0.010000   0.010000   0.020000 (  0.044283)

iterations = 100000
# b = Benchmark.measure do
#   for i in 1..iterations do
#     x = i
#   end
# end

# c = Benchmark.measure do
#   iterations.times do |i|
#     x = i
#   end
# end

# puts b #for loop 0.000000   0.000000   0.000000 (0.005817)
# puts c #times loop 0.010000   0.000000   0.010000 (0.004989)

#======bm method==========
#runs a set of tests and displays the result in a better format

# Benchmark.bm do |bm|
#   bm.report("for:") do
#     for i in 1..iterations do
#       x = i
#     end
#   end

#   bm.report("times:") do
#     iterations.times do |i|
#       x = i
#     end
#   end
# end

=begin
       user     system      total        real
for:  0.010000   0.000000   0.010000 (  0.004640)
times:  0.000000   0.000000   0.000000 (  0.004113)
=end

#======bmbm method===========
#uses first set of results as a rehersal

Benchmark.bmbm do |bmbm|
  bmbm.report("for:") do
    for i in 1..iterations do
      x = i
    end
  end

  bmbm.report("times:") do
    iterations.times do |i|
      x = i
    end
  end
end

=begin
Rehearsal ------------------------------------------
for:     0.000000   0.000000   0.000000 (  0.004596)
times:   0.010000   0.000000   0.010000 (  0.004046)
--------------------------------- total: 0.010000sec

             user     system      total        real
for:     0.000000   0.000000   0.000000 (  0.004501)
times:   0.010000   0.000000   0.010000 (  0.004403)
=end
