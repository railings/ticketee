Feature:
  In order to set up users with correct permissions
  As an admin
  I want to check all the boxes

  Background: 
    Given there are the following users:
      | email              | password | admin |
      | user@ticketee.com  | password | false |
      | admin@ticketee.com | password | true  |
    And I am signed in as "admin@ticketee.com"
    And there is a project called "TextMate 2"
    
    When I follow "Admin"
    And I follow "Users"
    And I follow "user@ticketee.com"
    And I follow "Permissions"
    
  Scenario: Viewing a project
    When I check "View" for "TextMate 2"
    And I press "Update"
    And I follow "Sign out"

    Given I am signed in as "user@ticketee.com"
    Then I should see "TextMate 2"
