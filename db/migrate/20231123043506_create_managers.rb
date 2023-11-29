class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :uid
      t.string :pass
      t.string :gid

      t.timestamps
    end
  end
end
