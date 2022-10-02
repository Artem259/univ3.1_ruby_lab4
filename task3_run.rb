require_relative 'task3.rb'

print 'Enter n k values (space-separated):'
str = gets
exit if str.nil? || str.empty?
str.chomp!
n, k = str.split(' ')
n, k = n.to_i, k.to_i.abs

res = function3(n,k)

print "\nResult:\n"
res.each_index do |i|
  print " x_", i+1, " = ", res[i], "\n"
end
