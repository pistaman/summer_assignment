class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :titles
      t.text :contents
      t.boolean :is_done

      t.timestamps
    end
  end
end