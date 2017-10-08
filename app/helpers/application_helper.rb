module ApplicationHelper
  def colour_for(status)
    case status
    when 'Good Service'
      'green'
    when 'Part Closure'
      'orange'
    when 'Service Closed'
      'red'
    else
      'black'
    end
  end
end
