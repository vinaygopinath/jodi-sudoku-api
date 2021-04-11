class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :rooms, :users, table_name: :room_users,
                                      column_options: { type: :uuid } do |t|
      t.datetime :joined_at

      t.index :room_id
      t.index :user_id
    end

    add_foreign_key :room_users, :rooms
    add_foreign_key :room_users, :users
  end
end
