
    mov = 0
    #print("xy",x,y)

    #while (x,y) not in center and mov<2: #에러포인트
    for _ in range(7):
        #center도달안했고, 센터가 마킹되어있지 않을때
        dx, dy = dxy[mov%4] #스타트
        

        if 0<=x+dx<n and 0<=y+dy<n:
            x += dx
            y += dy
            i += 1

        #움직였음
        #움직인곳이 visited 일 경우, 리턴하고 mov 변경
        #움직인곳이 참조불가능할 경우를 피하기 위해
        #움직임의 범위 한정
        #움직임의 범위 한정한 후에 움직이고 visited 체크

            if map[y][x]: #스타트포인트거르고
        #이외로 visited일 경우
                x -= dx
                y -= dy
                i -= 1
                mov += 1
            
            else:
                map[y][x] = i
        
        else: 
            mov += 1
        
        #이외일 경우
        #즉 움직임의 범위를 벗어날 경우
        #mov 변경
        


print(map)
