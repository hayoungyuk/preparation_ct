-- 코드를 입력하세요
/*(SELECT DATE_FORMAT(SALES_DATE, "%Y-%m-%d") AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'
UNION
SELECT DATE_FORMAT(SALES_DATE, "%Y-%m-%d") AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'
)
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID
*/
#놓친 것
#각각 테이블에서 뽑으면 되니까 join할 필요가 없음
#그냥 각각 뽑고 union하면 됨
#USER_ID = NULL 가 아니라 NULL AS USER_ID
#DATE_FORMAT 함수에서 "%y-%m-%d"라고 쓰면 오류남.
#year의 Y는 대문자로 적어야함

#03월만 뽑고 싶다면 WHERE절에서 SALES_DATE LIKE '2022-03%'
#즉, 내가 뽑고 싶은 곳까지 적은 후, %로 이어주기 
SELECT DATE_FORMAT(SALES_DATE, "%Y-%m-%d") AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'

UNION

SELECT DATE_FORMAT(SALES_DATE, "%Y-%m-%d") AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'

ORDER BY SALES_DATE, PRODUCT_ID, USER_ID