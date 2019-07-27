module ApplicationHelper
  def menu(svg_name,menu_title,path)
    content_tag(:li) do
      content_tag(:a, class: 'icon_outer b_txt')do
        concat(
          content_tag(:span) do
            embedded_svg("#{svg_name}.svg", class: "menu_icon")
          end
        )
        concat content_tag(:span, "#{menu_title}")
      end
    end
  end
  def my_logs(logs)
    comment = logs[:comment]
    content_tag(:li) do
      concat(
        content_tag(:div, class: "log_left") do
          embedded_svg("profile.svg", class: "menu_icon")
        end
      )
      concat(
        content_tag(:div, class: "log_right") do
          concat(
            content_tag(:div, class: "log_header") do
              content_tag(:a, @user_name)
            end
          )
          concat(
            content_tag(:div, class: "content") do
              content_tag(:p, comment)
            end
          )
          concat(
            content_tag(:div, class: "log_footer") do
              concat(
                content_tag(:div) do
                  content_tag(:a, class: "hover_blue") do
                    embedded_svg("comment.svg", class: "menu_icon")
                  end
                end
              )
              concat(
                content_tag(:div) do
                  content_tag(:a, class: "hover_green") do
                    embedded_svg("repeat.svg", class: "menu_icon")
                  end
                end
              )
              concat(
                content_tag(:div) do
                  content_tag(:a, class: "hover_pink") do
                    embedded_svg("love.svg", class: "menu_icon")
                  end
                end
              )
              concat(
                content_tag(:div) do
                  content_tag(:a, class: "hover_blue") do
                    embedded_svg("upload.svg", class: "menu_icon")
                  end
                end
              )
            end
          )
        end
      )
    end
  end
  private
  def embedded_svg filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', 'svg', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end
