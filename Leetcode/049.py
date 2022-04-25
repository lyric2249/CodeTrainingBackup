import re

def solution(s):
    anagrams = defaultdict(list)
    
    for word in strs:
        #정렬하여 딕셔너리에 추가
        anagrams[''.joing(sorted(word))].append(word)
    return list(anagrams.values())