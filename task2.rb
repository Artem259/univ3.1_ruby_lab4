require 'matrix'

def function2(vector)
  Math.sqrt(vector.inject(0) {|res, e| res + e**2})
end

n = 8
x = Vector[ *Array.new(n) { rand(10) } ]

result = function2(x)

print "\nInput:\n #{x}\n\n"
print "Result is #{result}\n"
