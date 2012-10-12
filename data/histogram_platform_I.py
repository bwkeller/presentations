#!/usr/bin/python
import matplotlib.pyplot as plt

if __name__ == "__main__":
	I = [float(line.split()[0]) for line in open('platform_I.dat').readlines()]
	plt.plot(I)
	plt.xlabel("Moment of Inertia")
	plt.show()
