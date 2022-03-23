class GraphicsController < ApplicationController
  before_action :set_todo_item
  before_action :set_todo_list

  def index
    @column_chart = @todo_item.group_by_hour_of_day(:created_at, format: "%l %P").count
    @pie_chart = @todo_item.group(:completed).count
    @line_chart = @todo_list.group_by_day(:created_at).count
  end

  private

  def set_todo_item
    @todo_item = TodoItem.all
  end

  def set_todo_list
    @todo_list = TodoList.all
  end
end
