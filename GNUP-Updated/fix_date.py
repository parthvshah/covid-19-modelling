import sys
import datetime
f = open(sys.argv[1], 'r')

lines = f.readlines()
day = datetime.datetime(2020, 1, 24)

for i in range(len(lines)):
    day += datetime.timedelta(days=1)
    print(day.strftime("%m/%d/%y"), lines[i], end='')