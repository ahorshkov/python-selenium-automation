# Created by Andrii.Horshkov at 22.04.2024
Feature: Target Help page UI

  Scenario: Verify main elements are shown
    Given Open Help page
    Then Title 'Target Help' is shown
    Then Search field is shown
    Then Search button is shown
    Then Section_1 with 7 elements is shown
    Then Section_2 with 2 elements (contact us and product recalls) is shown
    Then Title "Browse all Help pages" is shown