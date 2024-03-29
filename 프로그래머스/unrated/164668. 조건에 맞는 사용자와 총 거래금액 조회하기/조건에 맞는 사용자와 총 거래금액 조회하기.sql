-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD, USED_GOODS_USER
WHERE USED_GOODS_BOARD.WRITER_ID = USED_GOODS_USER.USER_ID AND STATUS LIKE 'done'
#    AND (TOTAL_SALES >= 700000)
# 조건 다 읽기.. . 완료된 중고 거래
GROUP BY USER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES 

#and 에서 Unknown column 'TOTAL_SALES' in 'where clause' 오류나면 HAVING 으로 돌리기