module ApplicationHelper

  def embedded_svg(filename, options = {})
    assets = Rails.application.assets
    asset = assets.find_asset(filename)
    if asset
      file = asset.source.force_encoding("UTF-8")
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css "svg"
      if options[:class].present?
        svg["class"] = options[:class]
      end
    else
      doc = "<!-- SVG #{filename} not found -->"
    end

    raw doc
  end

  def days_ago(time_in_seconds)
    days = (Time.now.to_i - Time.at(time_in_seconds).to_i) / (60 * 60 * 24)
    days_string = "#{days} days ago"
    if !days then
      days_string = "today"
    else
      days_string = "yesterday"
    end
    return days_string
  end
  
end
