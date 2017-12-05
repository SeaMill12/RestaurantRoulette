# feature/home_page.feature
Feature: Hello Cucumber
As a product manager
I want our users to be greeted when they visit our site
So that they have a better experience

Scenario: User sees the welcome message
When I go to the homepage
Then I should see the Garden Planner Button in the top Left

Scenario: User sees their gardens
  When I go to the homepage
  Then I should see Front Yard in the navigation bar
  Then I should see Back yard in the navigation bar
  
Scenario: User sees the calendar
  When I go to the homepage
  Then I should see Calendar
  
 Scenario: User sees the Add Garden Button
  When I go to the homepage
  Then I should see Add Garden Button
 Scenario: User sees the Sign Up Button
  When I go to the homepage
  Then I should see Add Garden Button
  
 Scenario: User sees the Sign In Button
  When I go to the homepage
  Then I should see Add Garden Button
 Scenario: User goes to Back Yard
  When I go to the homepage
  Then I press "Back Yard"
  Then I should be at the back yard page
  
 Scenario: User goes to Back Yard
  When I go to the homepage
  Then I press "Front Yard"
  Then I should be at the front yard page
 Scenario: User goes to Add a Garden
  When I go to the homepage
  Then I press "Add Garden"
  Then I should be at the Add Garden page
  
 Scenario: User goes to the calendar page
  When I go to the homepage
  Then I press "Calendar"
  Then I should be at the Calendar page
  
  Scenario: User goes to the Sign Up page
  When I go to the homepage
  Then I press "Sign Up"
  Then I should be at the Sign Up page
  
  Scenario: User goes to the Sign In page
  When I go to the homepage
  Then I press "Sign In"
  Then I should be at the Sign In page