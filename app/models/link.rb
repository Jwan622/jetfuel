class Link < ActiveRecord::Base
  before_create :shorten_url
  before_create :set_defaults

  def shorten_url
    self.short_url = "bit.ly-remix/" + SecureRandom.urlsafe_base64(6)
  end

  def set_defaults
    self.clicks = 0 if clicks.blank?
    self.title = TitleParser.new(orig_url).obtain_title
  end
end

puts "link was eager loaded"
