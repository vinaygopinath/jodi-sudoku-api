FactoryBot.define do
  factory :room do
    name { Faker::Internet.domain_word }
    state { Room.states[:undefined] }
    game_type { Room.game_types[:collaborative] }
  end
end
