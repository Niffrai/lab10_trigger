import random

f = open('synth_data.csv', 'w')

for i in range(0, 5):
	x = random.randint(5, 10)
	y = random.randint(5, 10)
	f.write(f"{x},{y},0\n")

for i in range(0, 5):
	x = random.randint(5, 10)
	y = random.randint(5, 10)
	f.write(f"{x},{y},0\n")

f.close()
