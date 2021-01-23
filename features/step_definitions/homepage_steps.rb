Given("I am on the homepage") do
  visit '/'
end

Then("I should see a welcome message") do
  expect(page).to have_content("Welcome")
end

Given('I am not logged in') do
  register
  logout
end

Then('I should see an invitation to login') do
  expect(page).to have_content("Please login or register to create a new link")
end

Given('I am logged in') do
  register
  logout
  login
end

Then('I should see a link to add a new url') do
  pending # Write code here that turns the phrase above into concrete actions
end