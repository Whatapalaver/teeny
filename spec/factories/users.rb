FactoryBot.define do
  factory :user do
    user_name { "grace_hopper" }
    email { "#{user_name}@example.com" }
    password { "supersecurepass" }
    password_confirmation { "supersecurepass" }
    confirmed_at { Time.now }
  end
end
