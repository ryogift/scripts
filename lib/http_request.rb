require "net/http"
require "uri"
require "json"

# httpリクエスト
class HttpRequest
  attr_reader :uri

  def initialize(uri)
    raise ArgumentError if !uri || uri.empty?

    @uri = URI.parse(uri)
  end

  def execute
    res = Net::HTTP.get(uri)
    JSON.parse(res, symbolize_names: true)
  end
end
