class CreateMonsters < ActiveRecord::Migration[6.1]
  def change
    create_table :monsters do |t|
      t.column(:name, :string)
      t.column(:bad_stuff, :string)
      t.column(:level, :integer)
      t.timestamps
    end
  end
end
