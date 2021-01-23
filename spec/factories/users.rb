FactoryBot.define do
  factory :user do
    username { "grace" }
    email { "#{username}@example.com" }
    password { "supersecurepass" }
    password_confirmation { "supersecurepass" }
  end
end
