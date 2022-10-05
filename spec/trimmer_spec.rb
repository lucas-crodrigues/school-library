require_relative '../trimmer_dec'
require_relative '../person'

describe TrimmerDecorator do
  context 'Use a Trimmer Decorator' do
    it 'Should return a trimmed person name' do
      person = Person.new(42, 'nimrodacosta', true)
      trimmed = TrimmerDecorator.new(person)
      expect(trimmed.correct_name) == 'nimrodacos'
    end
  end
end
