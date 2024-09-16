import pytest
import fonctions as f

def test_1( ) :
	assert f.puissance(2, 3) == 8
	assert f.puissance(2, 2) == 4
	
def test_2( ) :
	assert f.puissance(-2, 3) == -8
	assert f.puissance(2.2, 2) == (121.0 / 25.0)
	
def test_3( ) :
	with pytest.raises(Exception) as e_info:
		x = f.puissance(0, -5)

def test_4( ) :
	assert f.puissance(0, 0) == 1
	assert f.puissance(0, 1) == 0

