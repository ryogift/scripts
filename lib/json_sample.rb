require "json"

# JSONサンプル
class JsonSample
  def initialize
    @data = {
      users: [
        { id: 1, name: "honda" },
        { id: 2, name: "kawasaki" },
        { id: 3, name: "suzuki" }
      ]
    }
  end

  # to_jsonがjson形式のString型に変換する
  # JSON.parseがjson文字列をハッシュに変換する
  def output
    JSON.parse @data.to_json
  end
end
