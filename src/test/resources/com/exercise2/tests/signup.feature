Feature: Test Signup API

Scenario: Create new user
    Given url 'https://api.demoblaze.com/signup'
    And request { "username": "exerciseUser18", "password": "exercisePass18" }
    When method post
    Then status 200
    And match response contains ""

  Scenario: Try to create an existing user
    Given url 'https://api.demoblaze.com/signup'
    And request { "username": "exerciseUser11", "password": "exercisePass11" }
    When method post
    Then status 200
    And match response contains { "errorMessage": "This user already exist." }