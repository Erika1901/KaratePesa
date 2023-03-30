Feature: GET API PESA

  Background:
    * url 'https://pesa-backend-production-2.up.railway.app'
    * def token = read ("token.json")
    * header Authorization = 'Bearer '+ token

  Scenario: Get all record of product subscription
    Given path '/api/v1/product-subscription'
    When  method GET
    Then  status 200
    And   print response

  Scenario:  Get specific product subcription by user_id
    Given  path '/api/v1/product-subscription/user/641b15358b679aadf33bf43e'
    When   method GET
    Then   status 200
    And    print response

  Scenario: Get specific product subscription by product_id
    Given  path '/api/v1/product-subscription/product/63d7e4a30d128e9ea1d4d4b8'
    When   method GET
    Then   status 200
    And    print response

  Scenario: Get one record of product subscription by id
    Given  path '/api/v1/product-subscription/63d8e97774b498d160b20197'
    When   method GET
    Then   status 200
    And    print response