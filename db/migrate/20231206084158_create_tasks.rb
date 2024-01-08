class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :job
      t.string :content
      

      t.timestamps
    end
  end
end
