Scenario: Visual Testing
Given I am on the main application page
When I click on element located `By.xpath(//span[text()="Sign in"])`
When I COMPARE_AGAINST baseline with `sign in`

