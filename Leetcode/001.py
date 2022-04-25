import re

def solution(s):
    nums_map = {}
    
    for i, num in enumerate(nums):
        if target - num in nums_map:
            return [nums_map[target-num], o]
        nums_map[num]=i