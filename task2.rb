require 'matrix'
n = 8

x = Vector[ *Array.new(n) { rand(10) } ]

result = x.inject(0) {|res, e| res + e**2}
result = Math.sqrt(result)

print "\nInput:\n #{x}\n\n"
print "Result is #{result}\n"
