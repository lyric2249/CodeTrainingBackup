# 진입차수만 신경쓰면됨.
# 각 학생마다 진입차수로 나열하고, 이걸 뽑아서.

from collections import deque
target, start = map(int, input().split())

visited = [(start, 0)]
q = deque((start, 0))

while q:
    b, cnt = q.popleft()
    if b == start:
        break
    if not b%2:
        q.append((b//2, cnt+1))
    else:
        q.append((b+1, cnt+1))
        q.append((b-1, cnt+1))