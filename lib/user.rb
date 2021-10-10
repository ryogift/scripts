require "json"

# ユーザー
class User
  attr_reader :user_name, :email, :display_name

  def initialize(name)
    File.open("./data/users.json") do |f|
      @users = JSON.parse(f.read, symbolize_names: true)
    end
    account = @users[:accounts].find { |l_account| l_account[:user_name] == name }
    return if account.nil?

    @user_name = account[:user_name]
    @email = account[:email]
    profile = @users[:profiles].find { |l_profile| l_profile[:account_id] == account[:id] }
    @display_name = profile[:display_name]
  end
end

if __FILE__ == $PROGRAM_NAME
  user = User.new("shinpeifujimoto")
  puts user.display_name
end
