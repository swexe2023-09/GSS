class CreateFinishes < ActiveRecord::Migration[7.0]
  def change
    create_table :finishes do |t|
      t.integer :task_id
      t.integer :member_id
      
      t.timestamps
    end
  end
end
