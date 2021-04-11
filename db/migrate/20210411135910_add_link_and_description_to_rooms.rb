class AddLinkAndDescriptionToRooms < ActiveRecord::Migration[6.0]
  def up
    change_table :rooms, bulk: true do |t|
      t.change :name, :string, null: true
      t.column :link_name, :string, null: false
      t.column :description, :string, null: true
    end
  end

  def down
    change_table :rooms, bulk: true do |t|
      t.change :name, :string, null: false
      t.remove :link_name
      t.remove :description
    end
  end
end
