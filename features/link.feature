Feature: Link Creation
  As a user
  I want to create a new teeny link
  So I can share small urls
  
Scenario: Create Link
  Given I am logged in
  And I am on the New Link page
  When I make a new link
  Then I should see a success message