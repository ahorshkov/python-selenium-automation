# Created by Andrii.Horshkov at 22.04.2024
Feature: Sign In

  Scenario: Verify that a logged out user can navigate to Sign In
    Given Open target.com
    When Click Sign In
    Then Verify Sign In form opened
  Scenario: Verify that registered user logged in
    Given Open target.com
    When Click Sign In
    When Enter valid andrii.horshkov@gmail.com and Andrey380192!
    When Click Sign in with password
    Then Verify user is logged in

  Scenario: Verify that user can not login with invalid credentials
    Given Open target.com
    When Click Sign In
    When Enter invalid bla@blabla.com and 333blabla333
    When Click Sign in with password
    Then Verify user isn't logged in
    
  Scenario: User can open and close Terms and Conditions from sign in page
    Given Open target.com
    When Click Sign In
    When Store original window
    And Click on Target terms and conditions link
    And Switch to the newly opened window
    Then Verify Terms and Conditions page is opened
    And User can close new window and switch back to original