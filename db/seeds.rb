# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |n|
  Link.create!(
    orig_url: "https://www.google.com/search?tbm=isch&q=balut&ei=o9wWVeimI5DqoATYlIKAAg#imgdii=_&imgrc=qnYT21R-r5VDRM%253A%3BIbuD8fXhkqTEDM%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Fwp-content%252Fuploads%252F2012%252F08%252Fbalut.jpg%3Bhttp%253A%252F%252Fwww.bizarrefood.com%252Fblog%252Ffertilized-duck-embryo-balut%252F%3B295%3B300",
    clicks: 50 + (n + 5),
    title: "Google link",
    created_at: DateTime.parse("2015-03-30 18:44:#{59-n}")
  )
end
