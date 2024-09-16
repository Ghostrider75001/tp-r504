import math

def puissance(a, b):
	if type(a) is int and type(b) is int:
		R = 1
		if b >=0 :
			for i in range (b):
				R *= round(a, 5)
		else:
			R /= round(a, 5)
	else:
		R = math.exp(b * math.log(a))
		R = round(R, 5)
	return R 
