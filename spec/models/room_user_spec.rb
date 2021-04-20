require "rails_helper"

RSpec.describe RoomUser, type: :model do
  describe "Validation" do
    it "should create a room user with valid attributes" do
      room = create(:room)
      user = create(:user)
      room_user = RoomUser.new(user: user, room: room)

      expect(room_user).to be_valid
    end

    it "should not be valid without a room" do
      room = create(:room)
      room_user = RoomUser.new(room: room)

      expect(room_user).to_not be_valid
    end

    it "should not be valid without a user" do
      user = create(:user)
      room_user = RoomUser.new(user: user)

      expect(room_user).to_not be_valid
    end
  end
end
