import sys

for line in sys.stdin:
    l = line.split()

    x = l[0].split('=')[1]
    y = l[1].split('=')[1]
    s = l[2].split('=')[1]

    if int(x) + int(y) != int(s):
        print("Not valid " + x + " + " + y + " != " + s )
        break
