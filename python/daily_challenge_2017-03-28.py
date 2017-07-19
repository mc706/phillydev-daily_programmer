# daily_challenge_2017_03_29.py

from typing import List

def overlays(args: List[List[int]]) -> List[List[int]]:
	return args


if __name__ == '__main__':
	assert overlays([1,3], [2,6], [8,10], [7,11]) == [[1,6], [7,11]]
	assert overlays([5,12], [8,10]) == [5,12]