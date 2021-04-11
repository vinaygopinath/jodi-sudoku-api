require "rails_helper"

RSpec.describe RoomUser, type: :model do
  describe "Validation" do
    it "should create a room user with valid attributes" do
      room = FactoryBot.create(:room)
      user = FactoryBot.create(:user)
      room_user = RoomUser.new(user: user, room: room)

      expect(room_user).to be_valid
    end

    it "should not be valid without a room" do
      room = FactoryBot.create(:room)
      room_user = RoomUser.new(room: room)

      expect(room_user).to_not be_valid
    end

    it "should not be valid without a user" do
      user = FactoryBot.create(:user)
      room_user = RoomUser.new(user: user)

      expect(room_user).to_not be_valid
    end
  end
end
