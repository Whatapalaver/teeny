Given('I am on the home page') do
  visit '/'
end

Given('I submit my registration') do
  register
end


Then('I should see confirmation that I am logged in') do
  expect(page).to have_content("Logged in as example@example.com")
end