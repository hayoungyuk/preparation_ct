-- 코드를 입력하세요
SELECT info.REST_ID, info.REST_NAME, info.FOOD_TYPE, 
info.FAVORITES, info.ADDRESS, ROUND(AVG(review.REVIEW_SCORE),2) AS SCORE

FROM REST_INFO as info
JOIN REST_REVIEW as review
on info.REST_ID = review.REST_ID 

WHERE info.ADDRESS LIKE '서울%' -- where은 개별행

GROUP BY info.REST_ID
#HAVING info.ADDRESS LIKE '서울%'

# -- Having은 전체 결과
# 여기서는 GROUP BY 를 해야한다. 왜냐하면 REVIEW_SCORE을 따질 때 식당 ID 별로 다 계산해야하기 때문..
# 만약 where절으로 계산한다면
# 은돼지식당만 나온다. 왜?
#오 nononono... WHERE GROUP-BY HAVING
#이 순서만 지킨다면 식당'별'로 나오는 HAVING을 사용하면 ok
                                    
ORDER BY SCORE DESC, info.FAVORITES DESC