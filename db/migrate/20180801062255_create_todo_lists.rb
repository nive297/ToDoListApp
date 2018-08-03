class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.text :description
      t.references :users

      t.timestamps
    end
    add_index :todo_lists, :users_id
  end
end
