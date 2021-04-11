require "rails_helper"

RSpec.describe User, type: :model do
  it "should create a user with valid attributes" do
    user_with_valid_attributes = User.new(
      username: "some_username",
      id: SecureRandom.uuid
    )

    expect(user_with_valid_attributes).to be_valid
  end

  it "is not valid without a username" do
    user_without_username = User.new(username: nil)

    expect(user_without_username).to_not be_valid
  end

  it "is not valid without an id" do
    user_without_id = User.new(id: nil)

    expect(user_without_id).to_not be_valid
  end
end
