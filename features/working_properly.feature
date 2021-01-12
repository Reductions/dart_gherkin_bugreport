Feature: Tags working properlly
  Tests that show that tags are taken in account after a normal scenario

  Scenario: Should run
    Given the characters "abc"
    When they are counted
    Then the expected result is 294

  @skip
  Scenario: Should not run
    Given the characters "abc"
    When they are counted
    Then the expected result is 294
