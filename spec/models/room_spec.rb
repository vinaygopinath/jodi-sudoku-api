require "rails_helper"

RSpec.describe Room, type: :model do
  describe "Validation" do
    it "should create a room with valid attributes" do
      room_with_valid_attributes = Room.new(
        name: "Some Room",
        state: Room.states[:undefined],
        game_type: Room.game_types[:collaborative]
      )

      expect(room_with_valid_attributes).to be_valid
    end

    it "should not be valid without a name" do
      room_without_name = Room.new(
        state: Room.states[:undefined],
        game_type: Room.game_types[:collaborative]
      )

      expect(room_without_name).to_not be_valid
    end

    it "should not be valid with an empty name" do
      room_with_empty_name = Room.new(
        name: "",
        state: Room.states[:undefined],
        game_type: Room.game_types[:collaborative]
      )

      expect(room_with_empty_name).to_not be_valid
    end

    it "should not be valid without a game type" do
      room_without_game_type = Room.new(
        name: "Some Room",
        state: Room.states[:in_progress]
      )

      expect(room_without_game_type).to_not be_valid
    end

    it "should not be valid without a state" do
      room_without_state = Room.new(
        name: "Some Room",
        game_type: Room.game_types[:collaborative]
      )

      expect(room_without_state).to_not be_valid
    end
  end
end
