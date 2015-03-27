FactoryGirl.define do
  factory :link do
    sequence(:orig_url) { |n| "https://www.google.com/search?q=balut&espv=2&biw=1280&bih=678&source=lnms&tbm=isch&sa=X&ei=WEMUVYjfGoybyASsp4LIDw&ved=0CAYQ_AUoAQ#imgdii=_&imgrc=aBnVgAVJGn6jrM%253A%3BXZtBCFjfPu97oM%3Bhttp%253A%252F%252Fgenealogyreligion.net%252Fwp-content%252Fuploads%252F2011%252F06%252Fbalut25.jpg%3Bhttp%253A%252F%252Fgenealogyreligion.net%252Ftag%252Fbalut%3B450%3B338" }
    sequence(:short_url) { |n| "http://rebit.ly#{n}.i315io" }
    clicks 1
    title "Lutefisk Hell"
  end
end
