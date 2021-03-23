class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.column(:item, :string)
      t.column(:type, :string)
      t.column(:stat, :integer)
      t.timestamps
    end
  end
end
