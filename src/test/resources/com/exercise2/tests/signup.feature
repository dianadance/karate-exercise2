Feature: Test Signup API

Background:
    Given url 'https://api.demoblaze.com/signup'

Scenario Outline: Create new user
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response contains ""

    Examples:
        | username       | password       |
        | exerciseUser28 | exercisePass28 |

Scenario Outline: Try to create an existing user
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response contains { "errorMessage": "This user already exist." }

    Examples:
        | username       | password       |
        | exerciseUser19 | exercisePass19 |