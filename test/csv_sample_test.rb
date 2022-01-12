require "minitest/autorun"
require "./lib/csv_sample"

# CSVサンプル テスト
class TestCsvSample < Minitest::Test
  def test_output
    csv_sample = CsvSample.new
    csv_sample.output
    sample = CSV.read("./data/sample.csv", headers: true, header_converters: :symbol)
    assert_equal(sample[0][:name], "honda")
  end
end
