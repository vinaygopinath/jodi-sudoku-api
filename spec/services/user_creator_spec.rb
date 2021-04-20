require "rails_helper"

RSpec.describe UserCreator, type: :model do
  it "should create a new user if user is not found" do
    user_id = SecureRandom.uuid
    username = "some_username"

    UserCreator.new(id: user_id, username: username).find_or_create_user

    expect(User.find_by(id: user_id, username: username)).to be_valid
  end

  it "should return the existing user if user is found" do
    user_id = SecureRandom.uuid
    username = "some_username"
    existing_user = User.create(id: user_id, username: username)
    creator = UserCreator.new(id: user_id, username: username)

    creator.find_or_create_user

    expect(creator.result.created_at).to eq(existing_user.created_at)
  end
end
