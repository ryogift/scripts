require "./test/test_helper"
require "./lib/json_sample"

# JSONサンプルテスト
class TestJsonSample < Minitest::Test
  # 出力確認
  def test_output
    json_sample = JsonSample.new
    users = json_sample.output["users"]
    assert_equal(users[0]["name"], "honda")
  end
end
