class TodoItemsController < ApplicationController
	before_filter :set_todo_list

	def create
	 @todo_item = @todo_list.todo_items.new(params[:todo_item])
	 if @todo_item.save
	 	redirect_to @todo_list
	 end
	end

	def destroy
	 @todo_item = @todo_list.todo_items.find(params[:id])
	 if @todo_item.destroy
	  flash[:success] = "Todo List item was deleted."
	 else
	  flash[:error] = "Todo List item could not be deleted."
	 end
	 redirect_to @todo_list 
	end

	private

	def set_todo_list
	 @todo_list = TodoList.find(params[:todo_list_id])
	end

	def todo_item_params
	 params.require(:todo_item).permit(:content)
	end

	def set_todo_item
 		@todo_item = @todo_list.todo_items.find(params[:id])
	end	
end
