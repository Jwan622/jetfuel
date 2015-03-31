require 'rails_helper'

RSpec.describe "DisplayLinks", :type => :request do
  describe "GET links_path" do
    # These tests no longer work when I implmented javascript since I don't
    # think I have the selenium driver working to view objects when the
    # javasript code renders objects to the dom. I am keeping them even though 
    # I know it's bad practice to have reference to rspec tests in the future.
    # This is my first proejct with RSpec.


  #   it "should have a list of links sorted by popularity order" do
  #     link1 = create(:link, clicks: 100)
  #     link2 = create(:link, clicks: 50)
  #     link3 = create(:link, clicks: 150)
  #
  #     visit root_path
  #
  #     within "div.all-links li:nth-child(1)" do
  #       expect(page).to have_content(link3.short_url)
  #     end
  #
  #     within "div.all-links li:nth-child(2)" do
  #       expect(page).to have_content(link1.short_url)
  #     end
  #
  #     within "div.all-links li:nth-child(3)" do
  #       expect(page).to have_content(link2.short_url)
  #     end
  #   end
  # end
  #
  #   it "should allow user to enter a long link and it displays the shortened
  #     link on the page" do
  #     link = build(:link, orig_url: "www.link.com")
  #     visit root_path
  #     fill_in "link[orig_url]", with: link.orig_url
  #     click_button "Get Shortened Url"
  #
  #     expect(page).to have_content(link.orig_url, count: 1)
  #     expect(page).to have_selector("li", count: 1)
  #   end
  #
  #   it "should have shortened links that when clicked, redirect me back to the
  #     original url" do
  #     link = create(:link,
  #                   orig_url: "http://www.google.com/search?q=balut+egg&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=CngVVanlMIG5ogSap4GQDQ&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300"
  #                   )
  #     link.short_url = "bit.ly-remix/11111111"
  #     link.save
  #     visit root_path
  #     save_and_open_page
  #
  #
  #     expect(page).to have_link("bit.ly-remix/11111111", href: "http://www.google.com/search?q=balut+egg&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=CngVVanlMIG5ogSap4GQDQ&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300")
  #   end

    # it "should be able to sort by popularity order" do
    #   link1 = create(:link,
    #                 orig_url: "http://www.google.com/search?q=balut+egg&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=CngVVanlMIG5ogSap4GQDQ&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300",
    #                 clicks: 50,
    #                 title: "balut1",
    #                 created_at: DateTime.parse("2015-03-27 18:44:06")
    #                 )
    #
    #   link2 = create(:link,
    #                 orig_url: "http://www.google.com/search?q=balut+egg&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=CngVVanlMIG5ogSap4GQDQ&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300",
    #                 clicks: 75,
    #                 title: "balut2",
    #                 created_at: DateTime.parse("2015-03-25 18:44:07")
    #                 )
    #
    #   link3 = create(:link,
    #                 orig_url: "http://www.google.com/search?q=balut+egg&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=CngVVanlMIG5ogSap4GQDQ&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300",
    #                 clicks: 100,
    #                 title: "balut3",
    #                 created_at: DateTime.parse("2015-03-26 18:44:06")
    #                 )
    #
    #   link4 = create(:link,
    #                 orig_url: "http://www.google.com/search?q=balut+egg&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=CngVVanlMIG5ogSap4GQDQ&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300",
    #                 clicks: 25,
    #                 title: "balut4",
    #                 created_at: DateTime.parse("2015-03-30 18:44:06")
    #                 )
    #
    #   find(:css, ".created-checkbox").set(true)
    #   click_button "Filter"
    #
    #   within "div.all-links li:nth-child(1)" do
    #     expect(page).to have_content(link4.short_url)
    #   end
    #
    #   within "div.all-links li:nth-child(2)" do
    #     expect(page).to have_content(link1.short_url)
    #   end
    #
    #   within "div.all-links li:nth-child(3)" do
    #     expect(page).to have_content(link3.short_url)
    #   end
    #
    #   within "div.all-links li:nth-child(4)" do
    #     expect(page).to have_content(link4.short_url)
    #   end
    # end
  end
end
