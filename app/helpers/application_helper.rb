module ApplicationHelper
  def formatted_current_date
    formatted_date Date.current
  end

  def formatted_date date
    date.strftime("%d/%m/%Y")
  end

  def as_of_banner model
    content_tag :h2, "#{model.name.pluralize} of #{formatted_current_date}"
  end
end
