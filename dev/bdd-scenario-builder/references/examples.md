# Gherkin Examples

## Login
```gherkin
Feature: User Login

  Scenario: Successful login
    Given a user exists with email "user@example.com" and password "secret"
    And the user is on the login page
    When the user submits valid credentials
    Then the user is redirected to the dashboard

  Scenario: Account lockout after failed attempts
    Given a user exists with email "user@example.com" and password "secret"
    When the user enters an incorrect password 5 times
    Then the account should be locked
    And the user should see "Account locked. Try again in 15 minutes"
```

## Order Refunds
```gherkin
Feature: Order Refunds

  Rule: Full refunds are available within 30 days

    Scenario: Refund requested within return window
      Given an order placed 15 days ago
      When the customer requests a refund
      Then a full refund should be processed

    Scenario: Refund requested after return window
      Given an order placed 45 days ago
      When the customer requests a refund
      Then the refund should be denied
      And the customer should see "Return window expired"
```

## User Registration (Edge Cases)
```gherkin
Feature: User Registration

  Scenario: Registration with existing email
    Given a user exists with email "existing@example.com"
    When I try to register with email "existing@example.com"
    Then I should see "Email already registered"

  Scenario: Registration with invalid email format
    When I try to register with email "not-an-email"
    Then I should see "Please enter a valid email"

  Scenario: Registration with empty required fields
    When I submit the registration form with empty fields
    Then I should see validation errors for required fields
```
