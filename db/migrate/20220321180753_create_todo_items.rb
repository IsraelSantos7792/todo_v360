class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.text :description
      t.boolean :completed, default: false
      t.datetime :completed_at
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
