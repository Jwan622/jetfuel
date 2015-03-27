# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |n|
  Link.create!(
    orig_url: "https://www.google.com/search?q=google+image+balut&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=wXcUVfigDoTToATmsIHwDA&ved=0CAYQ_AUoAQ#tbm=isch&q=balut&imgdii=_&imgrc=aBnVgAVJGn6jrM%253A%3BXZtBCFjfPu97oM%3Bhttp%253A%252F%252Fgenealogyreligion.net%252Fwp-content%252Fuploads%252F2011%252F06%252Fbalut25.jpg%3Bhttp%253A%252F%252Fgenealogyreligion.net%252Ftag%252Fbalut%3B450%3B338",
    clicks: 50 + (n + 5),
    title: "Google link",
    created_at: DateTime.parse("2015-03-30 18:44:#{59-n}")
  )
end
