Feature: Test Login API

Scenario: Correct username and password
    Given url 'https://api.demoblaze.com/login'
    And request { "username": "exerciseUser20", "password": "exercisePass20" }
    When method post
    Then status 200
    And match response contains "Auth_token"

Scenario: Incorrect password
    Given url 'https://api.demoblaze.com/login'
    And request {"username": "exerciseUser17", "password": "exercisePass171"}
    When method post
    Then status 200
    And match response contains { "errorMessage": "Wrong password." }