FactoryBot.define do

  factory :content do
    place_name         { Faker::Name.name }
    description        { Faker::Lorem.sentence }
    plan_id            { Plan.new(id: 1) }
    image              {File.open("#{Rails.root}/spec/images/289CAEA9-8DA7-45A1-917A-EFFD0FDFF294.jpg")}
    time               { "10:00" }
  end
end
