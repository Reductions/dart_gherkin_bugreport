Feature: Calculator can work with strings
  Tests that the calculator can count the total value of the character code units in a string

  Scenario Outline: Should run
    Given the characters "<characters>"
    When they are counted
    Then the expected result is <result>

    Examples:
      | characters | result |
      | abc        | 294    |

  @skip
  Scenario: Should not run (but does)
    Given the characters "abc"
    When they are counted
    Then the expected result is 294
