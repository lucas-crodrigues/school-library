require 'json'

def save_data(app)
  save_people(app)
  save_books(app)
  save_rentals(app)
end

def save_people(app)
  people = []
  app.people.each do |person|
    if person.class.to_s == 'Student'
      student = { name: person.name, age: person.age, permission: person.parent_permission, type: person.class }
      people.push(student)
    else
      teacher = { name: person.name, age: person.age, specialization: person.specialization, type: person.class }
      people.push(teacher)
    end
  end
  File.write('people.json', "#{JSON.generate(people)}\n")
end

def save_books(app)
  books = []
  app.books.each do |book|
    book = { title: book.title, author: book.author }
    books.push(book)
  end
  File.write('books.json', "#{JSON.generate(books)}\n")
end

def save_rentals(app)
  rentals = []
  app.rentals.each do |rental|
    rental = { date: rental.date, book: app.books.index(rental.book), book_title: rental.book.title,
               person: app.people.index(rental.person), person_name: rental.person.name }
    rentals.push(rental)
  end
  File.write('rentals.json', "#{JSON.generate(rentals)}\n")
end
