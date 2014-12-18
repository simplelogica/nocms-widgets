FactoryGirl.define do
  factory :nocms_block, class: NoCms::Blocks::Block do
    layout { 'default' }
  end
end