require './student'
require './classroom'
require './book'
require './decorator'

def separator(char = '-', size = 40)
  puts char * size
end

def main
  first_classroom = Classroom.new(label: 'FIRST GRADE')
  student_x = Student.new(age: 12, name: 'MD', classroom: '1st Grade')
  first_classroom.add_students(student_x)
  first_classroom.students.each { |s| puts s.classroom.label }
  permission = student_x.can_use_service? ? 'YES' : 'NO'
  puts "Can student named #{student_x.name} use service? (#{permission})"

  separator

  book = Book.new(title: 'Title 1', author: 'Author 1')
  person_list = Person.new(age: 20, name: 'Ahmad')
  rental = Rental.new(person: person_list, book: book)
  puts "#{rental.date} == #{person_list.rentals.first.date}"
  person_list.rentals.each { |r| puts r.book.title }
  book.rentals.each { |r| puts r.person.name }

  cli_separator

  person = Person.new(age: 21, name: 'munawar')
  puts "Original name is: #{person.correct_name}"
  person_title = CapitalizeDecorator.new(person)
  puts "After capitalization, name is: #{person_title.correct_name}"
  trimmed_person_title = TrimmerDecorator.new(person_title)
  puts "After both capitalization & trim, name is: #{titled_trimmed_person.correct_name}"
end
main
