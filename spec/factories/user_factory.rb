FactoryBot.define do
  factory :user, class: User do
    email { Faker::Internet.email }
  end

  trait(:admin) do
    is_admin { true }
    is_activist { true }
  end

  trait(:activist) do
    is_admin { false }
    is_activist { true }
  end
end
