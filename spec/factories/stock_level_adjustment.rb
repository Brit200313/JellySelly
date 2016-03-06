FactoryGirl.define do
  factory :stock_level_adjustment, class: Shoppe::StockLevelAdjustment do
    description Faker::Company.buzzword
    adjustment 100
  end
end
