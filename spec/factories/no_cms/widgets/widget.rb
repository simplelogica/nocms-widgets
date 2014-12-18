# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_widget, class: NoCms::Widgets::Widget do
    slug { Faker::Lorem.sentence }
  end
end