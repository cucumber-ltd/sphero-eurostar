# https://jira.com/issues/88
@JIRA-88
Feature: Roll in a square forever

  Every 3 seconds, send ball forward, rotating
  90 degrees each time.

  Scenario: 12 second sample
    Given the time is 0
    When we start the square cycle
    Then the following roll commands should be sent to the ball:
      | time | distance | angle |
      |    0 |       50 |     0 |
      |    3 |       50 |    90 |
      |    6 |       50 |   180 |
      |    9 |       50 |   270 |
      |   12 |       50 |     0 |

  Scenario: 12 second sample
    Given the time is 0
    When we start the square cycle
    Then something else
