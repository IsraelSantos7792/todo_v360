class TodoItemsController < ApplicationController
  before_action :set_todo_list
  before_action :set_todo_item, only: [:show, :edit, :update, :destroy]

  def index
    @todo_items = @todo_list.todo_items
  end

  def show
  end

  def new
    @todo_item = @todo_list.todo_items.build
  end

  def edit
  end

  def create
    @todo_item = @todo_list.todo_items.build(todo_item_params)

    if @todo_item.save
      redirect_to(@todo_item.todo_list, notice: 'Item adicionado com sucesso')
    else
      render action: 'new'
    end
  end

  def update
    if @todo_item.update(todo_item_params)
      redirect_to([@todo_item.todo_list, @todo_item], notice: 'Item atualizado com sucesso')
    else
      render action: 'edit'
    end
  end

  def destroy
    @todo_item.destroy
    redirect_to(@todo_list, notice: 'Item deletado com sucesso')
  end

  private

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def set_todo_item
    @todo_item = @todo_list.todo_items.find(params[:id])
  end


  def todo_item_params
    params.require(:todo_item).permit(:description, :completed, :completed_at, :todo_list_id)
  end
end
