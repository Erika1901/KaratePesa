Feature: POST API PESA

  Background:
    * url 'https://pesa-backend-production-2.up.railway.app/api/v1'
    * header Content-Type = 'application/json'
    * def token = read ("token.json")
    * header Authorization = 'Bearer '+ token

    Scenario: create a product subscription
      Given path '/product-subscription'
      And   def reqBody = read ("requestBody1.json")
      And   request reqBody
      When  method POST
      Then  status 201
      And   print response
