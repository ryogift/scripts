# 人間
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    raise ArgumentError if first_name.nil? || first_name.empty?
    raise ArgumentError if last_name.nil? || last_name.empty?

    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end

person = Person.new("Taro", "Yamada")
puts person.to_s
