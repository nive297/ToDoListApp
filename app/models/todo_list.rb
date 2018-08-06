class TodoList < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title
  has_many :todo_items
  validates_presence_of :title
end
