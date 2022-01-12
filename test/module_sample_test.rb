require "./test/test_helper"
require "./lib/module_sample"

# Moduleサンプル テスト
class TestModuleSample < Minitest::Test
  def test_add
    bar = Bar.new
    assert_equal(bar.add(1, 2), 3)
  end
end
