Given('I am on the New Link page') do
  visit '/links/new'
end

When('I make a new link') do
  fill_in 'url', with: 'https:verylongexample.com'
  fill_in 'slug', with: 'teeny'
  click_button("Create Teeny Link")
end

Then('I should see a success message') do
  expect(page).to have_content "Link was successfully created"
end

