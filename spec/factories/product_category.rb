FactoryGirl.define do
  factory :product_category, class: Shoppe::ProductCategory do
    name Faker::Company.buzzword
  end
end
