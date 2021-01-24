@javascript

Feature: Link Creation
  As a user
  I want to create a new teeny link
  So I can share small urls


Scenario: Create Link
  Given I am logged in
  And I am on the New Link page
  When I make a new link
  Then I should see a success message

Scenario: Create Link without a slug
  Given I am logged in
  And I am on the New Link page
  When I make a new link without entering a slug
  Then I should see a success message

Scenario: Follow Link
  Given I am logged in
  And I have existing links
  And I am on my Links Listing page
  When I click the Teeny Link 
  Then I should be redirected to the Original Url

Scenario: Link Statistics
  Given I am logged in
  And I have existing links
  And I am on my Links Listing page
  When I click the Teeny Link 
  And I return to my Links Listing page
  Then I should see the Visited count increase by 1