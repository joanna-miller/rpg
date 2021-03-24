class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.column(:name, :string)
      t.column(:obstacle, :string)
      t.timestamps
    end
  end
end
