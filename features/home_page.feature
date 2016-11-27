Feature: Home page

  Scenario: Viewing application's home page
    Given there's a person named "John Doe" with "john.doe@gxmail.com" email
    When I am on the homepage
    Then I should see "John Doe" person
