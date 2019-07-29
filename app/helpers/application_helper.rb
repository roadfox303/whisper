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
