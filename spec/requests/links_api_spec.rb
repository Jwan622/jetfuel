require "rails_helper"

RSpec.describe "Links endpoint", type: :request do
  describe "GET links endpoint" do
    it "should return back json data of all links" do
      link1 = create(:link)
      link2 = create(:link)
      get api_v1_links_path(format: :json)

      response = JSON.parse(response.body)
    end
  end
end
