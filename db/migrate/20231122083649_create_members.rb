class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :uid
      t.string :pass
      t.string :jid

      t.timestamps
    end
  end
end
