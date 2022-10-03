require 'matrix'

def function2(vector)
  vector.norm
end

n = 8
x = Vector[ *Array.new(n) { rand(10) } ]

result = function2(x)

print "\nInput:\n #{x}\n\n"
print "Result is #{result}\n"
