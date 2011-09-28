module HotelsHelper
  def description_column description
    content_tag :td, truncate(description,lenght: 25), title: description
  end
end
