class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  attr_accessible :content
  validates_presence_of :content

end
