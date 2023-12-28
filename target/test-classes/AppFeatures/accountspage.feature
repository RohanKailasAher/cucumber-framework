Feature: Account page Feature

  Background:
    Given a user is already logged into the application
      | username                  | password  |
      | rohanaherneosoftqa@gmail.com | Pass@123 |

  Scenario: Accounts title page
    Given the user is on the accounts page
    When the user fetches the title of the page
    Then the page title should be "My account - My Shop"

  Scenario: Account section count
    Given the user is on the accounts page
    Then the user gets account sections
      | ADD MY FIRST ADDRESS          |
      | ORDER HISTORY AND DETAILS     |
      | MY CREDIT SLIPS               |
      | MY ADDRESSES                  |
      | MY PERSONAL INFORMATION       |
      | Home                          |
    And the account section count should be 6
