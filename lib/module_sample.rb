module Foo
  def add(left, right)
    left + right
  end
end


class Bar
  include Foo
end

if __FILE__ == $PROGRAM_NAME
  bar = Bar.new
  puts bar.add(1, 2)
end
