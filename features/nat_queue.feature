Feature: Adding elements to the queue
  As a user of the queue
  I want to add elements
  So that I can access to them later on

  Scenario: Adding one element to the queue
    Given I have a queue
    When I enqueue the item 20
    Then the item 20 is present in the queue
