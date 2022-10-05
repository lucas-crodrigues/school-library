require_relative '../book'

describe 'Book' do
  context 'should create an instance of Book class' do
    book = Book.new('Hobbit', 'Jhon')

    it 'takes two parameters and returns a Book object' do
      expect(book.class) == Book
    end
  end
end
