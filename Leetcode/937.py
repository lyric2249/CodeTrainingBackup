import re

def solution(s):
    letters, digits = [], []
    for log in logs:
        if log.split()[1].isdigit():
            digits.append()
        else:
            letters.append()
    #2개의 키를 lambda식으로 정렬
    letters.sort(key=lambda x: (x.split()[1:], x.split()[0])
    return letters + digits