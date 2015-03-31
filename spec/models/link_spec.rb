require 'rails_helper'

RSpec.describe Link, :type => :model do
  describe "Link" do

    it "should product a link that is 8 characters long and random" do
      link1 = create(:link)
      link2 = create(:link)

      shortened_link_1 = link1.shorten_url
      shortened_link_2 = link2.shorten_url

      refute_equal shortened_link_1, shortened_link_2
      assert_equal 8, shortened_link_1.partition("/")[2].length
    end
  end
end
