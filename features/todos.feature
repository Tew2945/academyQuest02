Feature: Manage Todos
  As a user
  I want to add and see todos
  So that I can track my quests

  Background:
    Given I am on the todos page

  Scenario: Add a new todo using data-testid
    When I fill in the field with testid "todo-input" with "Learn Rails E2E"
    And I click the button with testid "add-todo-btn"
    Then I should see a todo item with text "Learn Rails E2E"

  # Scenario: Toggle todo completion
  #   Given I have a todo "Complete setup"
  #   When I check the todo checkbox
  #   Then I should see the todo is marked as completed

  # Scenario: Delete a todo
  #   Given I have a todo "Delete me"
  #   When I click the delete button for the todo
  #   And I confirm the deletion
  #   Then I should not see the todo "Delete me"

  # Scenario: View empty state
  #   Given I have no todos
  #   Then I should see "No todos found."