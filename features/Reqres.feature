Feature: Reqres
    Learn how to use Reqres

Background:
    Given I invoke a GET request on the /users endpoint

@reqres
Scenario: TC8: verify pagination works
    When the status code is OK
    Then the number of records matches the property "per_page"

@reqres
Scenario: TC9: verify mandatory personal information fields are present
    When the status code is OK
    Then the response contains a non-null field "id" for user "0"
    And the response contains a non-null field "email" for user "0"
    And the response contains a non-null field "first_name" for user "0"
    And the response contains a non-null field "last_name" for user "0"
    And the response contains a non-null field "avatar" for user "0"
