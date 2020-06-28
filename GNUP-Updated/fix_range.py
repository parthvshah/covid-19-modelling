import sys
f = open(sys.argv[1], 'r')

lines = f.readlines()

for i in range(len(lines)):
    print(i, lines[i], end='')
