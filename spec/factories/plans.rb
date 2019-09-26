FactoryBot.define do

  factory :plan do
    title         { Faker::Name.name }
    user_id       { User.new(id: 1) }
  end

end
