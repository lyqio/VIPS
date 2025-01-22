nth = ARGV[0].to_i
fib = [1, 1]

while fib.length < nth do
  fib << fib[-1] + fib[-2]
end

print "fib(" + nth.to_s + "):     " + fib[-1].to_s
