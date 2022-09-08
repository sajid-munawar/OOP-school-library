require './person'

class Student < person
  def initialize(age:, classroom:, name: 'Unknown', parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @age = age
    @name = name
    @specialization = specialization
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
