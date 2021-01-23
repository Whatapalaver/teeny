Given('I am on the home page') do
  visit '/'
end

Given('I submit my registration') do
  click_on('Register')
  fill_in 'username', with: 'Erica Jong'
  fill_in 'email', with: 'example@example.com'
  fill_in 'password', with: 'password123'
  fill_in 'password_confirmation', with: 'password123'
  find('input[name="commit"]').click
end


Then('I should see confirmation that I have registered') do
  expect(page).to have_content("Logged in as example@example.com")
end