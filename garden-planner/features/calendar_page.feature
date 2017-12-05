Feature: Calendar page
As a User
I want a calendar that shows when to water my plants
So that I can keep my garden alice

Scenario: User visits Calendar Page
  Given I am on the homepage
  When I click on the "calendars_index_path" link
  Then I should be redirected to the calendar page
  
Scenario: User sees content in calendar
  Given there are plants in the garden
  And I am on the calendar page
  Then I should see content in the calendar
  
Scenario: User wants to go back to the homepage
  Given I am on the calendar page
  When I click the home button
  Then I should be taken to the home page
  
Scenario: User wants to see next months' schedule
  Given I am on the Calendar Page
  When I click on the button to the right of the current month's name
  Then I should see the calendar for next month
  
Scenario: User wants to see the previous months' schedule
  Given I am on the Calendar Page
  When I click on the button to the left of the current month's name
  Then I should see the calendar for the previous month