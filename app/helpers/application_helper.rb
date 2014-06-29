module ApplicationHelper
  def format_markdown_source(markdown)
    markdown.split("\n").map do |line|
      classes =
        if line.match /^    $/
          "in-block"
        elsif line.match /^    \+/
          "indented directive"
        elsif line.match /^    /
          "indented in-block"
        else
          ""
        end
      content_tag :pre, (line.blank? ? raw("&nbsp;") : line), class: classes
    end.join("\n")
  end
end
