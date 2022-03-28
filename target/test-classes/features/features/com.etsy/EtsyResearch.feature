@regression
Feature: Etsy search Functionality
  Background: navigate
    Given the user navigates to "https://www.etsy.com/"

  @hat @tc1 @smoke @regression
  Scenario:Validation of etsy search Hat
   // Given the user navigates to "https://www.etsy.com/"
    When the user searches with "Hat"
    Then the user validates the title "Hat | Etsy"

    @key @tc2 @smoke @regression
  Scenario:Validation of etsy search Key
   // Given the user navigates to "https://www.etsy.com/"
    When the user searches with "Key"
    Then the user validates the title "Key | Etsy"

  @key @tc3 @smoke @regression
  Scenario:Validation of etsy search Pin
  //  Given the user navigates to "https://www.etsy.com/"
    When the user searches with "Pin"
    Then the user validates the title "Pin | Etsy"