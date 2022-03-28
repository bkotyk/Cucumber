Feature: Etsy search Functionality

  Background: navigate
    Given the user navigates to "https://www.etsy.com/"

  @regressionoutline
  Scenario Outline:Validation of etsy search Hat
    When the user searches with "<searchvalue>"
    Then the user validates the title "<titlevalidation>"
    Examples:
      | searchvalue | titlevalidation |
      | Hat         | Hat \| Etsy     |
      | Key         | Key \| Etsy     |
      | Pin         | Pin \| Etsy     |
      | bag         | no title        |
      | flower      | flower          |


    #command+option+L-//to organize examples