Given('I am on the New Link page') do
  visit '/links/new'
end

When('I make a new link') do
  fill_in 'url', with: 'https:verylongexample.com'
  fill_in 'slug', with: 'teeny'
  click_button("Create Teeny Link")
end

When('I make a new link without entering a slug') do
  fill_in 'url', with: 'https:verylongexample.com'
  click_button("Create Teeny Link")
end

Then('I should see a success message') do
  expect(page).to have_content "Link was successfully created"
end

Given('I have existing links') do
  visit '/links/new'
  fill_in 'url', with: 'https://example.com'
  fill_in 'slug', with: 'teeny'
  click_button("Create Teeny Link")
end

Given('I am on my Links Listing page') do
  visit '/links'
end

When('I click the Teeny Link') do
  click_link('/s/teeny')
end

Then('I should be redirected to the Original Url') do
  expect(page).to have_content("If this wasn't an integration test, you'd be redirected to: https://example.com")
end

When('I return to my Links Listing page') do
  visit '/links'
end

Then('I should see the Visited count increase by 1') do
  pending "Fathom out how to test the value of a cell"
end

