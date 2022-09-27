class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

puts Person.new(14, 'Lucas').can_use_services?
puts Person.new(17, 'Costa', false).can_use_services?
puts Person.new(18, 'Rodrigues').can_use_services?
