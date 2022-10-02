def function1(array, n)
  arr = Array.new(array)
  arr.each do |e|
    next if e == n
    buff = arr.each_index.select{|i| arr[i] == e}
    if buff.length > 1
      buff.each do |b|
        arr[b] = n
      end
    end
  end
  arr
end

c_before = Array.new(16) { rand(30) }
c_after =  function1(c_before, -1)

c_before.each_index do |i|
  print c_before[i], "  ==>  ", c_after[i], "\n"
end
