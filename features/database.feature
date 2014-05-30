@no-clobber
Feature: Database
  Background:
    Given I have created the app "myapp" with pah

  Scenario: Have correct files
    Then I have the file config/database.yml and contents of this file should include:
      """
      database: myapp_development
      """
    Then I have the file config/database.yml and contents of this file should include:
      """
      database: myapp_test
      """
    Then I have a db/schema.rb


