require "minitest/autorun"
require "./lib/http_request"

# httpbin.orgへのリクエストテスト
class TestHttpRequest < Minitest::Test
  def test_nil_argument_error
    assert_raises(ArgumentError) { HttpRequest.new }
  end

  def test_blank_argument_error
    assert_raises(ArgumentError) { HttpRequest.new "" }
  end

  def test_execute
    http_request = HttpRequest.new("https://httpbin.org/uuid")
    response = http_request.execute
    assert response[:uuid].size.positive?
  end
end
