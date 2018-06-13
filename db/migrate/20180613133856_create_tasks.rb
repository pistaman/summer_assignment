class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :varchar
      t.string :contents
      t.string :text
      t.string :is_done
      t.string :boolean

      t.timestamps
    end
  end
end
