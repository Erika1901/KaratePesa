Feature: API PESA Default

  Background:
    * url 'https://pesa-backend-production-2.up.railway.app'
    * header Content-Type = 'application/json'
    * def token = read ("token.json")
    * header Authorization = 'Bearer '+ token

  Scenario:  Get default
    Given path '/api/v1'
    When  method GET
    Then  status 200
    And   print response

  Scenario: Get confirm email
    Given  path '/confirm-email'
    When   method GET
    Then   status 200
    And    print response

  Scenario: Post reset password
    Given   path '/api/v1/reset-password'
    And     request {"email": "francine.okourou@gmail.com"}
    When    method POST
    Then    status 201
    And     print response

  Scenario: Post product sale
    Given   path '/api/v1/product-sale'
    And     def reqBody = read ('requestBody2.json')
    And     request reqBody
    When    method POST
    Then    status 201
    And     print response



