require_relative '../capitalize_dec'
require_relative '../person'

describe CapitalizeDecorator do
  context 'Use a Capitalize decorator' do
    it 'Should return a capitalized person name' do
      person = Person.new(42, 'nimrod', true)
      capitalized = CapitalizeDecorator.new(person)
      expect(capitalized.correct_name) == 'nimrod'.capitalize
    end
  end
end
