@no-clobber
Feature: Run without errors

  In order to use pah, I need this to run
  without any error

  Scenario: Running pah with heroku
    When I run `pah myapp_on_heroku` interactively
    And I type "y"
    And I type "n"
    And I type ""
    And I type "myapp.com"
    And I type ""
    Then the stdout should contain:
      """
      running heroku addons:add newrelic:stark --app myapp.com
      """
    Then the output should contain:
      """
       CONGRATS! INSTALLATION COMPLETE!
      """

  Scenario: Running pah without heroku
    When I run `pah myapp_without_heroku` interactively
    And I type "n"
    Then the stdout should contain:
      """
      CONGRATS! INSTALLATION COMPLETE!
      """
