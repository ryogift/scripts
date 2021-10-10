require "./test/test_helper"
require "./lib/user"

# User テスト
class TestUser < Minitest::Test
  def test_user_name
    user = User.new("shinpeifujimoto")
    assert_equal(user.user_name, "shinpeifujimoto")
  end

  def test_email
    user = User.new("shinpeifujimoto")
    assert_equal(user.email, "shinpeifujimoto@ryo.gift")
  end

  def test_display_name
    user = User.new("shinpeifujimoto")
    assert_equal(user.display_name, "Shinpei Fujimoto")
  end

  def test_nil_user
    user = User.new("test")
    assert_nil(user.user_name)
  end
end
