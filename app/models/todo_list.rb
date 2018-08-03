class TodoList < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title
  has_many :todo_items

end
