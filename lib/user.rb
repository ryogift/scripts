require "json"

# ユーザー
class User
  attr_reader :user_name
  attr_reader :email
  attr_reader :display_name

  def initialize(name)
    users = JSON.load(
      open("./data/users.json"), nil,
      create_additions: false, symbolize_names: true
    )
    account = users[:accounts].find { |account| account[:user_name] == name }
    return if account.nil?

    @user_name = account[:user_name]
    @email = account[:email]
    profile = users[:profiles].find { |profile| profile[:account_id] == account[:id] }
    @display_name = profile[:display_name]
  end
end

if __FILE__ == $PROGRAM_NAME
  user = User.new("shinpeifujimoto")
  puts user.display_name
end
