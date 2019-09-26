FactoryBot.define do
  factory :user do
      password = Faker::Internet.password(8)
      nickname {Faker::Name.last_name}
      email { "kkk@gmail.com" }
      password {password}
  end
end
