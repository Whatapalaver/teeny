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
  expect(page).to have_content("Welcome. Please")
  expect(page).to have_content("create a new link")
end

Given('I am logged in') do
  register
  logout
  login
end

Then('I should see a link to add a new url') do
  expect(page).to have_selector(:link_or_button, 'Create a Teeny URL')
end

When('I click on create teeny url') do
  click_on('Create a Teeny URL')
end

Then('I should see the create new link form') do
  expect(page).to have_content("Create a New Teeny Link")
end