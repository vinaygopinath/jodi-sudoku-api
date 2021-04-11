class User < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :rooms, { through: :room_users }

  validates :username, presence: true
end
