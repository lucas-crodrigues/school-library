require 'json'

def save_data(app)
  save_people(app)
end

def save_people(app)
  people = []
  app.people.each do |person|
    if person.class.to_s === 'Student'
      student = { name: person.name, age: person.age, permission: person.parent_permission, type: person.class }
      people.push(student)
    else
      teacher = { name: person.name, age: person.age, specialization: person.specialization, type: person.class }
      people.push(teacher)
    end
  end
  File.write('people.json', "#{JSON.generate(people)}\n")
end
