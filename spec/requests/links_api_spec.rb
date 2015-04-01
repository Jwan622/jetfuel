require "rails_helper"

RSpec.describe "Links endpoint", type: :request do
  describe "GET links endpoint" do
    it "should return back json data of all links" do
      link1 = create(:link)
      link2 = create(:link)
      get api_v1_links_path(format: :json)

      links = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(links.first["short_url"]).to match(/bit.ly-remix/)
      expect(links.first["orig_url"]).to match(/www.google/)
      expect(links.first["title"]).to eql("Lutefisk Hell")
    end
  end
end
