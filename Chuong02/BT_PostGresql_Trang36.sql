/*-- Câu 1 --

SELECT DISTINCT c.title, m.full_name 
FROM registrations r 
JOIN members m ON m.id = r.member_id 
JOIN courses c ON c.id = r.course_id 
WHERE m.full_name = 'Nguyê ̃n An';
*/
/*--Câu 2-- 

SELECT c.id, c.title,
count (m.id) as soLuong
FROM registrations r 
JOIN members m ON m.id = r.member_id 
JOIN courses c ON c.id = r.course_id 
group by c.id, c.title ORDER BY COUNT(*) DESC;

ROLLBACK;
BEGIN;

INSERT INTO registrations (member_id, course_id) 
VALUES (
    (SELECT id FROM members WHERE full_name = 'Lê Chi' ORDER BY id DESC LIMIT 1), 
    (SELECT id FROM courses WHERE title = 'Cơ sơ ̉ dữ liệu')
);

COMMIT;
*/

 -- Câu 3 -- 



SELECT c.id AS course_id, m.full_name, c.title
FROM registrations r
JOIN members m ON m.id = r.member_id
JOIN courses c ON c.id = r.course_id
WHERE m.full_name = 'Lê Chi';

