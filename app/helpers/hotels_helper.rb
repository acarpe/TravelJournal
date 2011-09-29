module HotelsHelper
  def description_column description
    content_tag :td, truncate(description,lenght: 25), title: description
  end

  def star_ratings
    [
      {description: "Perfect", value: 5},
      {description: "Great", value: 4},
      {description: "Good", value: 3},
      {description: "Fair", value: 2},
      {description: "Poor", value: 1}
    ]
  end
end
