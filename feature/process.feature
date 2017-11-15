Feature: Verify Values

  Scenario:
    Given get values from link
    When check to see right number of values
    When check to see values are greater than zero
    When check to see the sum of value are eaual to the total value
    When check to see if values are formatted in currencies
    When Total balance matches sum of values if not "value are not correct"
    Then verification message
