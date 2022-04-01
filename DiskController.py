import heapq as hq

def solution(arr, processes):
    answer = []

    rq = []
    wq = []
    twwait = 0

    for idx, each in enumerate(processes):
        readtf, start, lapse, *alias = each.split()
        if readtf == "read":
            hq.heappush(rq, (int(start), int(lapse), idx, 1, list(map(int, alias))))
        else:
            hq.heappush(rq, (int(start), int(lapse), idx, 0, list(map(int, alias))))

    yet = 0
    currtime = 0
    qing = []

    while rq:
        tc=0
        while rq[0][0] <= currtime:
            tc = 1
            currcand = hq.heappop(rq)
            if currcand[3]:
                hq.heappush(qing, currcand)
            else:
                hq.heappush(wq, currcand)
                yet += 1

        if rq and wq and yet:
            curring = hq.heappop(wq)
            print(curring)
            yet -= 1
            for i in range(curring[-1][0], curring[-1][1]+1):
                arr[i] = curring[-1][2]
            currtime = currtime + curring[1]
            tc = 1
        
        if rq and wq and not yet:
            curring = hq.heappop(qing)
            print("".join([str(arr[i]) for i in range(curring[-1][0], curring[-1][1]+1)]))
            currtime = max(currtime, curring[0]+curring[1])
            tc = 1
            
        if not tc:
            currtime = rq[0][0]
            #currtime += 1

        print("currtime", currtime)


        
    return answer



#읽기동시가능
#ing읽기가있으면쓰기는대기
#대기중인쓰기있으면읽기도대기


#초기 배열의 상태가 담긴 문자열 배열 arr과 읽기,
# 쓰기 작업 요청이 담긴 문자열 배열 processes가 
#매개변수로 주어집니다. 읽기 작업에서 읽은 내용을 
#processes에서 주어진 순서대로 정답 배열에 담은 뒤, 
#배열이 전체 프로세스에 의해 사용된 시간을 정답 
#배열의 마지막에 담아 return 하도록 solution 
#함수를 완성해주세요.

