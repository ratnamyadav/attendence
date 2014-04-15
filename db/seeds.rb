comp = Department.create(:name => "Computer Engineering");
mech = Department.create(:name => "Mechanical Engineering");
civil = Department.create(:name => "Civil Engineering");
chem = Department.create(:name => "Chemical Engineering");

#for computer
(0..15).each do |i|
	comp.courses.create(:name => "course_comp#{i}", :max_capacity => 40)
end
(0..5).each do |i|
	fa = comp.faculties.create(:name => "faculty_comp#{i}", :qualification => "Phd", :email => "faculty#{i}@coed.com")
	fc = fa.faculty_courses.create(:courses_id => comp.courses[rand(0..15)].id)
end
YEAR=["First", "Second", "Third", "Final"]
(0..500).each do |i|
	st = comp.students.create(:name => "student_comp#{i}",:year => YEAR[rand(0..3)], :email => "student#{i}@coed.com")
	sc = st.student_courses.create(:courses_id => comp.courses[rand(0..15)].id)
end

# For mechanical
(0..15).each do |i|
	mech.courses.create(:name => "course_mech#{i}", :max_capacity => 40)
end
(0..5).each do |i|
	fa = mech.faculties.create(:name => "faculty_mech#{i}", :qualification => "Phd", :email => "faculty#{i}@mech.com")
	fc = fa.faculty_courses.create(:courses_id => mech.courses[rand(0..15)].id)
end
YEAR=["First", "Second", "Third", "Final"]
(0..500).each do |i|
	st = mech.students.create(:name => "student_mech#{i}",:year => YEAR[rand(0..3)], :email => "student#{i}@mech.com")
	sc = st.student_courses.create(:courses_id => mech.courses[rand(0..15)].id)
end

#for civil
(0..15).each do |i|
	civil.courses.create(:name => "course_civil#{i}", :max_capacity => 40)
end
(0..5).each do |i|
	fa = civil.faculties.create(:name => "faculty_civil#{i}", :qualification => "Phd", :email => "faculty#{i}@civil.com")
	fc = fa.faculty_courses.create(:courses_id => civil.courses[rand(0..15)].id)
end
YEAR=["First", "Second", "Third", "Final"]
(0..500).each do |i|
	st = civil.students.create(:name => "student_civil#{i}",:year => YEAR[rand(0..3)], :email => "student#{i}@civil.com")
	sc = st.student_courses.create(:courses_id => civil.courses[rand(0..15)].id)
end

#for chemical
(0..15).each do |i|
	chem.courses.create(:name => "course_chem#{i}", :max_capacity => 40)
end
(0..5).each do |i|
	fa = chem.faculties.create(:name => "faculty_chem#{i}", :qualification => "Phd", :email => "faculty#{i}@chem.com")
	fc = fa.faculty_courses.create(:courses_id => chem.courses[rand(0..15)].id)
end
YEAR=["First", "Second", "Third", "Final"]
(0..500).each do |i|
	st = chem.students.create(:name => "student_chem#{i}",:year => YEAR[rand(0..3)], :email => "student#{i}@chem.com")
	sc = st.student_courses.create(:courses_id => chem.courses[rand(0..15)].id)
end

puts "Demo Data in database :)"
