FactoryBot.define do
  factory :room do
    name { Faker::Company.name }
    state { Room.states[:undefined] }
    game_type { Room.game_types[:collaborative] }
    link_name { Faker::Internet.domain_word }
  end
end
