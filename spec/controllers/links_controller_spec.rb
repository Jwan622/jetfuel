require 'rails_helper'

RSpec.describe LinksController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET create" do
    it "returns http success" do
      get :create, { link: { orig_url: "www.url.com" } }
      expect(response).to have_http_status(:redirect)
    end
  end

end
