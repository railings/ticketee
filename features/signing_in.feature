Feature:
  In order to use the site
  As a user
  I want to be able to sign up

  Scenario: Signing in via a confirmation
    Given there are the following users:
      | email             | password |unconfirmed|
      | user@ticketee.com | password | true      |
    And "user@ticketee.com" opens the email with subject "Confirmation instructions"
    When they click the first link in the email
    Then I should see "Your account was successfully confirmed"
    And I should see "Signed in as user@ticketee.com"

  Scenario: Signing in via form
    Given there are the following users:
      | email             | password |
      | user@ticketee.com | password |
    And I am signed in as them
