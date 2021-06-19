require "csv"

# CSVサンプル
class CsvSample
  def initialize
    @data = {
      users: [
        { id: 1, name: "honda" },
        { id: 2, name: "kawasaki" },
        { id: 3, name: "suzuki" }
      ]
    }
  end

  def output
    CSV.open("./lib/sample.csv", "w") do |csv|
      csv << @data[:users][0].keys
      @data[:users].each do |user|
        csv << user.values
      end
    end
  end
end
