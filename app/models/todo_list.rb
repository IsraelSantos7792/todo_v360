class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :delete_all

  def percent_complete
    return 0 if total_items == 0
    (100 * completed_items.to_f / total_items).round(1)
  end

  def completed_items
    @completed_items ||= todo_items.completed.count
  end

  def total_items
    @total_items ||= todo_items.count
  end

  def status
    case percent_complete.to_i
    when 0
      'Lista não iniciada'
    when 100
      'Lista finalizada'
    else
      'Em progresso'
    end
  end

  def badge_color
    case percent_complete.to_i
    when 0
      'dark'
    when 100
      'info'
    else
      'primary'
    end
  end

  scope :asc_order, -> { order(created_at: :asc) }
end
