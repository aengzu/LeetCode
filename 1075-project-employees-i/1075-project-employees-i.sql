-- 각 프로젝트의 평균 경험 연수를 구하는 SQL 쿼리
SELECT p.project_id, 
       -- 평균 경험 연수를 소수점 2자리까지 반올림하여 출력
       ROUND(AVG(e.experience_years), 2) AS average_years 
FROM Project p
-- Project 테이블과 Employee 테이블을 employee_id를 기준으로 조인
LEFT JOIN Employee e 
ON p.employee_id = e.employee_id
-- 프로젝트별로 그룹화하여 각 프로젝트의 평균 경험 연수를 계산
GROUP BY p.project_id;
