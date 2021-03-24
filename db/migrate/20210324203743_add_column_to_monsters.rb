class AddColumnToMonsters < ActiveRecord::Migration[6.1]
  def change
    add_column(:monsters, :location_id, :integer)
  end
end
