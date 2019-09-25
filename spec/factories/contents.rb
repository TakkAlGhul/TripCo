FactoryBot.define do

  factory :content do
    place_name         { Faker::Name.name }
    description        { Faker::Lorem.sentence }
    plan_id            { Plan.new(id: 1) }
    image              {File.open("#{Rails.root}/public/images/test_image.jpg")}
    time               { "10:00" }
  end
end
