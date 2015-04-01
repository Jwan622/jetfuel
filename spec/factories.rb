FactoryGirl.define do
  factory :link do
    sequence(:orig_url) { |n| "http://www.google#{n}.com" }
    clicks 1
    title "Lutefisk Hell"
  end
end
