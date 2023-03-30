Feature: POST API Pesa user

  Background:
    * url 'https://pesa-backend-production-2.up.railway.app'
    * header Content-Type = 'application/json'
    * def token = read ("token.json")
    * header Authorization = 'Bearer '+ token

  Scenario: create a user
    Given  path '/api/v1/user/register'
    And    def reqBody = read ("requestBody3.json")
    And    request reqBody
    When   method POST
    Then   status 201
    And    print response


#  Scenario:  create user from csv file with key user_asset
#    Given   path '/api/v1/user/register-csv'
#    And     request
#    When    method POST
#    Then    status 201
#    And     print response