class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, :null => false
      t.text :content, :null => false
      t.boolean :is_done, :default => false

      t.timestamps
    end
  end
end
