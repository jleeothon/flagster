module ApplicationHelper

  def group_countries countries
    s = ""
    i = 0
    loop do
      i += 6
      slice = countries.slice(i...(i + 6))
      break if slice.nil? or slice.empty?
      s << "<div class=\"row\">\n".html_safe
      slice.each do |c|
        s << "<div class=\"col-xs-6 col-sm-4\">".html_safe
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
