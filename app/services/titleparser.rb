class TitleParser
  attr_reader :connection

  def initialize(orig_url)
    @connection = Faraday.new(orig_url)
  end

  def obtain_title
    response = parse(connection.get)
    require 'pry' ; binding.pry
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end
