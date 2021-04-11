class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms, id: :uuid do |t|
      t.string :name, null: false
      t.integer :state, null: false
      t.integer :game_type, null: false

      t.timestamps
    end
  end
end
