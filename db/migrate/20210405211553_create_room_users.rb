class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users, id: false do |t|
      t.references :user, index: true, foreign_key: true, type: :uuid
      t.references :room, index: true, foreign_key: true, type: :uuid
    end
  end
end
