require 'matrix'

def function3(n, k)
  unless (3..9).include?(n)
    abort " n range error."
  end

  a = Array.new(n) { Array.new(n) }
  b = Array.new(n) {|i| i+1.0}

  for i in (0 .. n-1) do
    for j in (0 .. n-1) do
      a[i][j] = (i==j)? 2.0 : k+2.0
    end
  end

  print "\nInput:\n n = #{n}\n k = #{k}\n"
  a.each_index do |row|
    print " ", a[row].map{|l| l.to_i}, "   [", b[row].to_i, "]\n"
  end

  for e in (0 .. n-1) do
    akk = a[e][e]

    for j in (e .. n-1) do
      a[e][j] = a[e][j] / akk
    end

    b[e] = b[e] / akk

    for i in (0 .. n-1) do
      next if i==e
      aik = a[i][e]
      b[i] = b[i] - aik * b[e]
      for j in (e .. n-1) do
        a[i][j] = a[i][j] - aik * a[e][j]
      end
    end
  end
  b
end
