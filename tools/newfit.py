TEMPLATE = "newfit.py.template"
TARGET = "newfit.py.target"
RESULT = "newfit.py.result"

LINES = [9, 28] # 10 - 29

lines_result = []

with open(TEMPLATE, "r") as file:
	lines_result = file.readlines()

with open(TARGET, "r") as file:
	lines = file.readlines()
	for i in range(len(lines)):
		if i >= LINES[0] and i <= LINES[1]:
			lines_result[i] = lines[i]

with open(RESULT, "w") as file:
	for line in lines_result:
		file.write(line)