Feature: Open MRS tests

  @openMRS
  Scenario: Register a patient
    Given The user logs in to OpenMRS with following credentials
      | username | admin    |
      | password | Admin123 |
    When the user registers a new patient with following information:
      | GivenMame    | Bogdana      |
      | FamilyName   | Kotyk        |
      | Gender       | Female       |
      | Day          | 25           |
      | Month        | June         |
      | Year         | 1996         |
      | Address      | 2200 E Devon |
      | PhoneNumber  | 7739461372   |
      | relationType | Doctor       |
      | RelativeName | Potel        |
    Then the user validates the patient name and familyName
      | GivenName  | Bogdana |
      | FamilyName | Kotyk   |
