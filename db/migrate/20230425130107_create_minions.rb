class CreateMinions < ActiveRecord::Migration[6.1]
  def change
    create_table :minions, primary_key: :minionid, force: :cascade do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.string :email
      t.float :height
      t.timestamps
    end
  end
end

