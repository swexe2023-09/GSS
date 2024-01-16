class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :chat_room, null: false, foreign_key: true
      t.integer :manager_id
      t.integer :member_id
      t.text :content
      
      t.timestamps
    end
  end
end
