require 'csv'

module Exportable
  extend ActiveSupport::Concern

  def export_csv
    headers = ['Descrição', 'Status', 'Id da lista', 'Criada em', 'Atualizada em']

    csv = CSV.generate(write_headers: true, headers: headers) do |row|
      TodoItem.where(todo_list_id: @todo_list.id).each do |item|
      row << [ item.description,
               item.completed? ? 'Concluída' : 'Não Concluída',
               item.todo_list_id,
               item.created_at,
               item.updated_at
      ]
      end
    end
    send_data csv, type: 'text/csv; charset=utf-8; header=present',
      disposition: 'attachment; filename=tarefas.csv'
  end
end
