Feature:
  In order to manage a project's progress
  As a user
  I want be able to create tickets for a project

  Background:
    Given there is a project called "Internet Explorer"
    And I am on the homepage
    When I follow "Internet Explorer"
    And I follow "New Ticket"

    Scenario: Creating a ticket
      When I fill in "Title" with "non-standards compliance"
      And I fill in "Description" with "My pages are ugly!"
      And I press "Create Ticket"
      Then I should see "Ticket has been created."
