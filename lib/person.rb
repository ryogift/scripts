# 人間
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    raise ArgumentError if !first_name || first_name.empty?
    raise ArgumentError if !last_name || last_name.empty?

    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

if __FILE__ == $PROGRAM_NAME
  person = Person.new("Taro", "Yamada")
  puts person.full_name
end
