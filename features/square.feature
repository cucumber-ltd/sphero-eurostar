Feature: Square

  Scenario: No obstacles
    Given the sphere is still
    And we want to observe for 12 seconds
    When we tell it to square
    Then it should move as follows:
      | time | direction | speed |
      |    0 |         0 |    30 |
      |    3 |        90 |    30 |
      |    6 |       180 |    30 |
      |    9 |       270 |    30 |
