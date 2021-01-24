Feature: Homepage

  Scenario: I can see a welcome message
    Given I am on the homepage
    Then I should see a welcome message

  Scenario: When not logged in I see an invite to login or register
    Given I am not logged in
    And I am on the homepage
    Then I should see an invitation to login

  Scenario: When I am logged in I see a link to add a new url
    Given I am logged in
    And I am on the homepage
    Then I should see a link to add a new url

  Scenario: I can navigate to the create links page
    Given I am on the home page
    And I am logged in
    When I click on create teeny url
    Then I should see the create new link form

