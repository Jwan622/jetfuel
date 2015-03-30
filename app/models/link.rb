class Link < ActiveRecord::Base
  before_create :shorten_url
  before_create :set_defaults

  def self.sort_by_most_recent
    order(created_at: :desc, clicks: :desc)
  end

  def self.sort_by_most_views
    order(clicks: :desc, created_at: :desc).all
  end

  def shorten_url
    self.short_url = "bit.ly-remix/" + SecureRandom.urlsafe_base64(6)
  end

  def set_defaults
    self.clicks = 0 if clicks.blank?
    if title.blank? && orig_url =~ /.com/ # this regex needs work.
      self.title = orig_url.split(".")[1] + " Link"
    else
      self.title = orig_url
    end
  end
end
