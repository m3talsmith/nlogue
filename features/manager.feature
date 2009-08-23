Feature: Manage Engines
  As a admin
  I want to manage all available nLogue engines
  
  Background: 
    Given the following engines
      | name                   | version |
      | simple_athentication   | 0.1     |
      | simple_content         | 0.1     |
      | simple_content_tagging | 0.1     |
  
  Scenario: add an engine
    When I visit "add a new engine"
    And add in the following engine
      | name          | version |
      | simple_assets | 0.1 |
    Then I should be shown the newly created engine
    
  Scenario: update an engine
  Scenario: remove an engine