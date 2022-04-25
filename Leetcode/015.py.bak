import re

def solution(s):
    
    if not height:
        return 0
    
    volume = 0
    
    left = 0
    right = len(height)-1
    left_max = height[left] #0
    right_max = height[right] #1
    
    while left<right:
        left_max = max(height[left], left_max)
        right_max = max(height[right], right_max)
        
        # 더 높은 쪽을 향해 투 포인터 이동
        
        if left_max<right_max:
            volume += left_max - height[left]
            left += 1
        else:
            volume += right_max - height[right]
            right -= 1
    
    return volume





def solution(s):
    stack = []
    volume = 0
    
    for i in range(len(height)):
        # 변곡점을 만나는 경우
        while stack and height[i]>height[stack[-1]]:
            #스택에서 꺼낸다
            top=stack.pop()
            
            if not len(stack):
                break
            
            #이전과의 차이만큼 물높이 처리
            distance = i-stack[-1]-1
            waters = min(height[i], height[stack[-1]])-height[top]
            
            volume += disantce*waters
        
        stack.append(i)
    
    return volume