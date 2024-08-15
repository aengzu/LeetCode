-- 학생의 이름, 과목 이름, 그리고 해당 과목에 대한 시험 참석 횟수를 반환하는 쿼리

SELECT 
    s.student_id,         -- 학생 ID를 선택
    s.student_name,       -- 학생 이름을 선택
    sub.subject_name,     -- 과목 이름을 선택
    COUNT(e.student_id) AS attended_exams  -- 해당 학생이 해당 과목에 시험을 본 횟수를 계산
FROM 
    Students s           -- Students 테이블에서 학생 정보를 가져옴
CROSS JOIN 
    Subjects sub         -- Subjects 테이블과 CROSS JOIN을 사용해 모든 학생-과목 조합을 만듦
LEFT JOIN 
    Examinations e       -- Examinations 테이블과 LEFT JOIN을 사용해 시험 참석 기록을 결합
ON 
    s.student_id = e.student_id           -- Students와 Examinations를 학생 ID를 기준으로 연결
AND 
    sub.subject_name = e.subject_name     -- Subjects와 Examinations를 과목 이름을 기준으로 연결
GROUP BY 
    s.student_id,         -- 학생 ID로 그룹화
    s.student_name,       -- 학생 이름으로 그룹화
    sub.subject_name      -- 과목 이름으로 그룹화
ORDER BY 
    s.student_id,         -- 결과를 학생 ID로 정렬
    sub.subject_name;     -- 그리고 과목 이름으로 정렬
