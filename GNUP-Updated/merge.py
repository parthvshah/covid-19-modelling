import sys
f1 = open(sys.argv[1], 'r')
f2 = open(sys.argv[2], 'r')

lines1 = f1.readlines()
lines2 = f2.readlines()

for x, y in zip(lines1, lines2):
    print(x.split()[0], y, end="")
