require 'json'

def load_data(app)
  load_people(app)
end

def load_people(app)
  File.write('people.json', JSON.generate([])) unless File.exist?('people.json')
  people = JSON.parse(File.read('people.json'))
  people.each do |person|
    if person['type'] == 'Student'
      student = Student.new('Unkown', person['age'], person['name'], parent_permission: person['permission'])
      app.people.push(student)
    else
      teacher = Teacher.new(person['specialization'], person['age'], person['name'])
      app.people.push(teacher)
    end
  end
end
