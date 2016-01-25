Feature: Manage blog
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to manage the blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully manage categories
    Given I am on the admin page
    When I go to the categories page
    Then I should see "Categories"

    When I am on the categories page
    And I fill in "category_name" with "Foobar"
    And I press "Save"
    Then I should see "Category was successfully saved"

    When I am on the categories page
    When I follow "Delete" within the category table
    Then I should see "Are you sure you want to delete this category"

    When I press "delete"
    Then I should not see "Foobar"
