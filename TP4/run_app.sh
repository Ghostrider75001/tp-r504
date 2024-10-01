docker run -d \
	-p 5000:5000 \
	--network=net-tp4 \
	--name=tp4-app \
	-v /home/prof/Documents/Shy_Kramm/tp-r504/TP4/srv:/srv \
	bm-tp4