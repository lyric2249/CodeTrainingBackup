import re

def solution(s):
    s = s.lower()
    s = re.sub('[^a-z0-9]', '', s) # 정규식으로 불필요한 문자 필터링
    
    return s == s[::-1] #slicing
    