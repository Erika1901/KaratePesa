Feature: GET API Pesa User

  Background:
    * url 'https://pesa-backend-production-2.up.railway.app'
    * def token = read ("token.json")
    * header Authorization = 'Bearer '+ token

  Scenario: get all user
    Given  path '/api/v1/user'
    When   method GET
    Then   status 200
    And    print response
