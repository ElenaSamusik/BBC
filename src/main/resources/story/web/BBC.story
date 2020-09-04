
Scenario: Sign Up
Meta:
	 @skip
Given I am on the main application page
When I click on element located `By.xpath(//span[text()="Sign in"])`
When I click on element located `By.xpath(//span[text()="Register now"])`
When I click on element located `By.xpath(//span[text()="16 or over"])`
When I register as a user
Examples:
|Day               |Month             | Year                     |Email                             |Password                       |
|#{randomInt(1,28)}|#{randomInt(1,12)}| #{randomInt(1920, 2004)} |#{generate(Internet.emailAddress)}|#{generate(Internet.password)} |
|#{randomInt(1,28)}|#{randomInt(1,12)}| #{randomInt(1920, 2004)} |#{generate(Internet.emailAddress)}|#{generate(Internet.password)} |
|#{randomInt(1,28)}|#{randomInt(1,12)}| #{randomInt(1920, 2004)} |#{generate(Internet.emailAddress)}|#{generate(Internet.password)} |

Scenario: Sign Up to the application
Given I am on the main application page
When I click on element located `By.xpath(//span[text()="Sign in"])`
When I Sign in





