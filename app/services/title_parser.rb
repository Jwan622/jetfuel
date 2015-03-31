class TitleParser
  attr_reader :connection

  def initialize(orig_url)
    @connection = Faraday.new(url: orig_url)
  end

  def obtain_title
    response = connection.get
    html_doc = Nokogiri::HTML(response.body)
    html_doc.css("title").text
  end
end
