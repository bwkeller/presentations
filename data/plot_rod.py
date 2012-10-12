#!/usr/bin/python
import matplotlib.pyplot as plt

if __name__ == "__main__":
	pos = [float(line.split()[0]) for line in open('rod.dat').readlines()]
	time = [float(line.split()[1]) for line in open('rod.dat').readlines()]
	plt.plot(pos, time, 'ro')
	plt.ylabel("Fall Time (s)")
	plt.xlabel("Position (m)")
	plt.show()
