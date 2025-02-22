Feature: Test Login API

Background:
    Given url 'https://api.demoblaze.com/login'

Scenario Outline: Correct username and password
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response contains "Auth_token"

    Examples:
        | username       | password        |
        | exerciseUser22 | exercisePass22 |

Scenario Outline: Incorrect password
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response contains { "errorMessage": "Wrong password." }

    Examples:
        | username       | password   |
        | exerciseUser17 | exercisePass171 |