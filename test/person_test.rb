require "./test/test_helper"
require "./lib/person"

# Person テスト
class TestPerson < Minitest::Test
  def test_full_name
    person = Person.new("Taro", "Yamada")
    assert_equal(person.full_name, "Taro Yamada")
  end

  def test_blank_argument_error
    assert_raises(ArgumentError) { Person.new "", "" }
  end

  def test_first_name_blank_argument_error
    assert_raises(ArgumentError) { Person.new "", "Yamada" }
  end

  def test_last_name_blank_argument_error
    assert_raises(ArgumentError) { Person.new "Taro" }
  end

  def test_first_name
    person = Person.new("Taro", "Yamada")
    assert_equal(person.first_name, "Taro")
  end

  def test_last_name
    person = Person.new("Taro", "Yamada")
    assert_equal(person.last_name, "Yamada")
  end
end
