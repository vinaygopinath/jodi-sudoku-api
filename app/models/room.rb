class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users

  validates :name, :state, :game_type, presence: true

  enum state: {
    undefined: 1,
    in_progress: 2,
    completed: 3
  }

  enum game_type: {
    collaborative: 1
  }
end
