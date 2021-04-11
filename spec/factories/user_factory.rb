FactoryBot.define do
  factory :user do
    id { SecureRandom.uuid }
    username { Faker::Internet.username }
  end
end
