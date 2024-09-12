import math

def puissance(a, b):
	if type(a) is int and type(b) is int:
		R = 1
		if b >=0 :
			for i in range (b):
				R *= a
		else:
			R /= a
	else:
		R = math.exp(b * math.log(a))
	return R 
