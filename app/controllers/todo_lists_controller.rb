class TodoListsController < ApplicationController
  before_action :set_todo_list, only: %i[ show edit update destroy ]

  def index
    @todo_lists = TodoList.asc_order
  end

  def show
    @todo_item = TodoItem.new
  end

  def new
    @todo_list = TodoList.new
  end

  def edit
  end

  def create
    @todo_list = TodoList.new(todo_list_params)
    if @todo_list.save
      redirect_to todo_list_url(@todo_list), notice: "Lista de tarefas criada com sucesso"
    else
      render :new, status: :unprocessable_entity
      flash.now[:alert] = @todo_list.errors.full_messages.to_sentence
    end
  end

  def update
    if @todo_list.update(todo_list_params)
      redirect_to todo_list_url(@todo_list), notice: "Lista de tarefas atualizada com sucesso"
    else
      render :edit, status: :unprocessable_entity
      flash.now[:alert] = @todo_list.errors.full_messages.to_sentence
    end
  end

  def destroy
    @todo_list.destroy
    redirect_to todo_lists_url, notice: "Lista de tarefas deletada com sucesso"
  end

  private

  def set_todo_list
    @todo_list = TodoList.find(params[:id])
  end

  def todo_list_params
    params.require(:todo_list).permit(:title)
  end
end
