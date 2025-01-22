import sys

args = sys.argv

fibs = [1, 1]

while len(fibs) < int(args[1]):
  fibs.append(fibs[-1]+fibs[-2])

for i in range(len(fibs)):
  print(f"fib({i+1}):      {fibs[i]}")