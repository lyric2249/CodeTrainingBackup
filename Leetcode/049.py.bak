import re

def solution(s):
    words = [word for word in re.sub(r'[^\w]','',paragraph).lower().split() if word not in banned]
    
    counts = collections.Counter(words)
    
    return counts.most_common(1)[0][0]