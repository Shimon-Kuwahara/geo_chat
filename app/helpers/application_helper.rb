module ApplicationHelper
  def formatted_time(time)
    time.strftime('%Y-%m-%d %H:%M')
  end
end
