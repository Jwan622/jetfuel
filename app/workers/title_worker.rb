class TitleWorker
  include Sidekiq::Worker

  def perform(id)
    link = Link.find(id)
    orig_url = link.orig_url
    link.title = TitleParser.new(orig_url).obtain_title
    link.save
  end
end
