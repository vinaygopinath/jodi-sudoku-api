class UserSerializer
  def initialize(user)
    @user = user
  end

  def json
    {
      user: {
        id: @user.id,
        username: @user.username
      }
    }
  end
end
