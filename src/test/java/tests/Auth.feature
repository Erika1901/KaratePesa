Feature: POST API Pesa login

  Background:
    * url 'https://pesa-backend-production-2.up.railway.app'
    * header Content-Type = 'application/json'
    * def data = read ("loginData.json")


  Scenario:  login user at email and password
    Given  path '/api/v1/auth/login'
    And    request data
    When   method POST
    Then   status 201
    And    print response