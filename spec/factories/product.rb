FactoryGirl.define do
  factory :product, class: Shoppe::Product do
    parent_id nil
    name Faker::Beer.name
    sku Faker::Code.ean
    permalink Faker::Company.buzzword
    description Faker::Hipster.sentences
    short_description Faker::Hipster.sentences
    active true
    weight 1.0
    price 10.0
    cost_price nil
    tax_rate_id nil
    featured false
    in_the_box Faker::StarWars.quote
    stock_control true
    default false
  end
end
