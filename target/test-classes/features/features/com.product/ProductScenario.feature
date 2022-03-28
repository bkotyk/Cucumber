Feature: Validation of Products

  @productproject
  Scenario: Validation of New Product Creation
    Given the user navigates to product website homepage and clicks orderButton
    When the user enters the product information "MyMoney" and "4"
    And  the user enters the address information "Techtorial","2200 E Devon","Des Plaines","IL","60018"
    And the user enters the cad information "Visa","123456789012","08/24"
    Then the user validated success message
    And the user validates the product details "Techtorial","MyMoney","4","2200 E Devon","Des Plaines","IL","60018","Visa","123456789012","08/24"

  @productprojectOutline
  Scenario Outline: Validation of New Product Creation
    Given the user navigates to product website homepage and clicks orderButton
    When the user enters the product information "<productName>" and "<quantity>"
    And the user enters the address information "<customerName>","<street>","<city>","<state>","<zipcode>"
    And the user enters the cad information "<cardType>","<cardNumber>","<expireDate>"
    Then the user validated success message
    And the user validates the product details "<customerName>","<productName>","<quantity>","<street>","<city>","<state>","<zipcode>","<cardType>","<cardNumber>","<expireDate>"
    Examples:
      | productName | quantity | customerName | street         | city        | state | zipcode | cardType         | cardNumber   | expireDate |
      | MyMoney     | 4        | Techtorial   | 2200 E Devon   | Des Plaines | IL    | 60018   | Visa             | 123456789012 | 08/24      |
      | FamilyAlbum | 6        | ahmet        | 560 michigan   | Chicago     | IL    | 60084   | MasterCard       | 123543987654 | 09/22      |
      | ScreenSaver | 7        | Dino         | 43 dino street | Addison     | IL    | 60106   | American Express | 987654321234 | 05/22      |
      | MyMoney     | 4        | Techtorial   | 2200 E Devon   | Des Plaines | IL    | 60018   | Visa             | 123456789012 | 08/24      |
      | FamilyAlbum | 6        | ahmet        | 560 michigan   | Chicago     | IL    | 60084   | MasterCard       | 123543987654 | 09/22      |
      | ScreenSaver | 7        | Dino         | 43 dino street | Addison     | IL    | 60106   | American Express | 987654321234 | 05/22      |
      | MyMoney     | 4        | Techtorial   | 2200 E Devon   | Des Plaines | IL    | 60018   | Visa             | 123456789012 | 08/24      |
      | FamilyAlbum | 6        | ahmet        | 560 michigan   | Chicago     | IL    | 60084   | MasterCard       | 123543987654 | 09/22      |
      | ScreenSaver | 7        | Dino         | 43 dino street | Addison     | IL    | 60106   | American Express | 987654321234 | 05/22      |
      | MyMoney     | 4        | Techtorial   | 2200 E Devon   | Des Plaines | IL    | 60018   | Visa             | 123456789012 | 08/24      |
      | FamilyAlbum | 6        | ahmet        | 560 michigan   | Chicago     | IL    | 60084   | MasterCard       | 123543987654 | 09/22      |
      | ScreenSaver | 7        | Dino         | 43 dino street | Addison     | IL    | 60106   | American Express | 987654321234 | 05/22      |