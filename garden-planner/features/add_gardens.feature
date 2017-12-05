Feature: As a Gardener
  I want to have multiple gardens
  So I can manage multiple gardens
  
Scenario: A user adds a Garden
  When I go to the homepage
  Then I press "Add Garden"
  Then I put in "Test" for the title
    And I put in "5" for the x size
    And I put in "5" for the y size
    Then I push Save
    Then I should be at the test garden page
    
  
Scenario: A user adds a Garden and leaves
  When I go to the homepage
  Then I press "Add Garden"
  Then I put in "Test" for the title
    And I put in "5" for the x size
    And I put in "5" for the y size
    Then I push Back to Garden
    Then I should be at the root garden page
    
Scenario: A user deletes a garden
  When I go to the homepage
  Then I press "Front Yard"
  Then I press "Delete"
  Then I should see "Back Yard"
