FactoryBot.define do

  factory :plan do
    nickname           { Faker::Name.name }
    user_id            { User.new(id: 1) }
  end

end
