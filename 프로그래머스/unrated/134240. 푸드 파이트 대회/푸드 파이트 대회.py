def solution(food):
    res = ''
    for i in range(1, len(food)):
        res += str(i) * (food[i]//2)
    return res + '0' + res[::-1]