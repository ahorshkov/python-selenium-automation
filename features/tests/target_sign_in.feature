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