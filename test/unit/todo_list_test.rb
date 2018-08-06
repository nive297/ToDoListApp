require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@todoList = TodoList.new(title:"sdf",description:"desc")
  end
  test "list should save with title present" do
  	 assert @todoList.save
  end

  test "title should not be empty" do
     @todoList2 = TodoList.new(description:"desc")
     assert !@todoList2.save
  end
end
