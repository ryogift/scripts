require "./test/test_helper"
require "./lib/http_request"

# httpbin.orgへのリクエストテスト
class TestHttpRequest < Minitest::Test
  def test_nil_argument_error
    assert_raises(ArgumentError) do
      http_request = HttpRequest.new
    end
  end

  def test_blank_argument_error
    assert_raises(ArgumentError) do
      http_request = HttpRequest.new ""
    end
  end

  def test_execute
    http_request = HttpRequest.new("https://httpbin.org/uuid")
    response = http_request.execute
    assert response[:uuid].size > 0
  end
end
