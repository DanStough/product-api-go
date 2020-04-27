Feature: Basic Functionality
  In order to ensure functionality defined in https://github.com/hashicorp-demoapp/product-api-go/issues/1
  Test the system

  Scenario: Get products
    Given the server is running
    When I make a "GET" request to "/coffees"
    Then a list of products should be returned
    And the response status should be "OK"

  Scenario: Get a product's ingredients
    Given the server is running
    When I make a "GET" request to "/coffees/{id:[0-9]+}/ingredients" where "id" is "1" 
    Then a list of the product's ingredients should be returned
    And the response status should be "OK"

  Scenario: Create new user
    Given the server is running
    When I make a "POST" request to "/signup" with the following request body "{'username': 'User1', 'password': 'testPassword'}"
    Then the AuthResponse should be returned
    And the response status should be "OK"

  Scenario: Sign in user
    Given the server is running
    When I make a "POST" request to "/signin" with the following request body "{'username': 'User1', 'password': 'testPassword'}"
    Then the AuthResponse should be returned
    And the response status should be "OK"