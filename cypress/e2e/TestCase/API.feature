Feature: API

  Feature: Home Route

  Scenario: Access home route
    Given the API is running
    When I send a GET request to "/"
    Then the response status code should be 200
    And the response body should be '{"msg": "home"}'

Feature: User Routes

  Scenario: Get all users
    Given the API is running
    When I send a GET request to "/api/user"
    Then the response status code should be 200
    And the response body should be a list of users

  Scenario: Get user by ID
    Given the API is running
    When I send a GET request to "/api/user/{id}" with id as 1
    Then the response status code should be 200
    And the response body should contain user data

  Scenario: Create user
    Given the API is running
    When I send a POST request to "/api/user/create" with body
    """
    {
        "name": "John Doe",
        "e-mail": "john.doe@example.com",
        "companies": ["Company1"]
    }
    """
    Then the response status code should be 201
    And the response body should contain created user data

  Scenario: Update user
    Given the API is running
    When I send a PATCH request to "/api/user/{id}/update" with id as 1 and body
    """
    {
        "name": "John Doe Updated",
        "e-mail": "john.doe.updated@example.com",
        "companies": ["Company1"]
    }
    """
    Then the response status code should be 200
    And the response body should contain updated user data

  Scenario: Delete user
    Given the API is running
    When I send a DELETE request to "/api/user/{id}/delete" with id as 1
    Then the response status code should be 200
    And the response body should confirm deletion

Feature: Company Routes

  Scenario: Get all companies
    Given the API is running
    When I send a GET request to "/api/company"
    Then the response status code should be 200
    And the response body should be a list of companies

  Scenario: Get company by ID
    Given the API is running
    When I send a GET request to "/api/company/{id}" with id as 1
    Then the response status code should be 200
    And the response body should contain company data

  Scenario: Create company
    Given the API is running
    When I send a POST request to "/api/company/create" with body
    """
    {
        "name": "Company ABC",
        "cnpj": "12345678000195",
        "adress": {
            "cep": "12345678",
            "country": "Country",
            "city": "City",
            "street_location": "Street",
            "number": "123",
            "district": "District"
        }
    }
    """
    Then the response status code should be 201
    And the response body should contain created company data

  Scenario: Update company
    Given the API is running
    When I send a PATCH request to "/api/company/{id}/update" with id as 1 and body
    """
    {
        "name": "Company ABC Updated",
        "cnpj": "12345678000195",
        "adress": {
            "cep": "12345678",
            "country": "Country Updated",
            "state": "State",
            "city": "City",
            "street": "Street Updated",
            "number": "123",
            "district": "District Updated"
        }
    }
    """
    Then the response status code should be 200
    And the response body should contain updated company data

  Scenario: Delete company
    Given the API is running
    When I send a DELETE request to "/api/company/{id}/delete" with id as 1
    Then the response status code should be 200
    And the response body should confirm deletion
