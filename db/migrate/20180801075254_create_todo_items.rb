class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :todo_list

      t.timestamps
    end
    add_index :todo_items, :todo_list_id
  end
end
