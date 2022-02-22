Use QuanLySinhVien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘H’;
SELECT * FROM QuanLySinhVien.Student
WHERE StudentName like 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12

SELECT * FROM QuanLySinhVien.Class
WHERE month (StartDate) = '12';

-- SELECT * FROM QuanLySinhVien.Class
-- WHERE year (StartDate) = '1985';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
SELECT * FROM Subject
WHERE Credit >= 3 and Credit <= 7;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE Student 
SET ClassId = 2
WHERE StudentName = 'HUNG';

-- Hiển thị các thông tin: StudentName, SubName, Mark. 
-- Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

SELECT S.StudentName, Sub.SubName, m.Mark
FROM Student s join Subject sub join Mark m 
ORDER BY Mark DESC, StudentName ASC;