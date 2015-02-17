module ApplicationHelper

  def markdown(value)
    Kramdown::Document.new(value).to_html.html_safe
  end

end
