class UserCreator

  attr_reader :result

  def initialize(id:, username:)
    @user_id = id
    @username = username
  end

  def find_or_create_user
    @result = User.find_or_create_by(id: @user_id) do |user|
      user.username = @username
    end

    @result.save!
  end
end
