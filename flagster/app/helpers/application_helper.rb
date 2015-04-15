module ApplicationHelper

  def group_countries countries, size=3
    s = ""
    col_width = 12 / size
    i = 0
    loop do
      i += size
      slice = countries.slice(i...(i + size))
      break if slice.nil? or slice.empty?
      s << "<div class=\"row\">\n".html_safe
      slice.each do |c|
        s << "<div class=\"col-md-#{col_width}\">".html_safe
        s << "<input type=\"checkbox\" id=\"#{c}\" name=\"#{c}\">".html_safe
        s << "<label for=\"#{c}\">"
        s << "#{c}"
        s << "</label>".html_safe
        s << "</div>\n".html_safe
      end
      s << "</div>\n".html_safe
    end
    s
  end

end
