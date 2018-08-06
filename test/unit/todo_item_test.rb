require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@todoItem = TodoItem.new(content:"con")
  end
  test "listItem should save with content present" do
  	 assert @todoItem.save
  end

  test "content should not be empty" do
     @todoItem2 = TodoList.new()
     assert !@todoItem2.save
  end
end
