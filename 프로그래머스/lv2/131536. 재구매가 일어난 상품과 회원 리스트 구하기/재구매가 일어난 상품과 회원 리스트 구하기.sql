-- 코드를 입력하세요
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING count(*) >= 2
ORDER BY USER_ID, PRODUCT_ID DESC

#missing point
# group by and having ㅇㅡㅣ ㅇㅣㅎㅐ ㅂㅜㅈㅗㄱ
# 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 ㄱㅓㅅㅇㅡㄹ ㅎㅏㄱㅗ ㅅㅣㅍㅇㅡㄹ ㄸㅒ
# groupingㅇㅡㄹ ㅅㅐㅇㄱㅏㄱㅎㅏㄱㅣ
# ㄱㅡㄹㅣㄱㅗ groupingㅇㅡㄴ ㅎㅏㄱㅗ ㄴㅏㅁㅕㄴ havingㅈㅓㄹㄹㅗ ㅊㅓㄹㅣ ㄱㅏㄴㅡㅇ