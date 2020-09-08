Scenario: Visual Testing
Meta:
	 @skip
Given I am on the main application page
When I click on element located `By.xpath(//span[text()="Sign in"])`
When I COMPARE_AGAINST baseline with `sign_in` using screenshot configuration:
|scrollableElement                      |  
|By.xpath(//div[@class="page__wrapper"])|   
When I enter `${Email}` in field located `By.xpath(//input[@id="user-identifier-input"])`
When I enter `${Password}` in field located `By.xpath(//input[@id="password-input"])`
When I COMPARE_AGAINST baseline with `sign_in` using screenshot configuration:
|scrollableElement                      |  
|By.xpath(//div[@class="page__wrapper"])| 
When I click on element located `By.xpath(//button[@id="submit-button"])`
When I  COMPARE_AGAINST baseline with `your_account` ignoring:
|ELEMENT |
|By.xpath('//h2[@class="module__title" and span[contains(text(), "Welcome to BBC.com")]]/text()')| 


Scenario: Visual Testing
Meta:
	 @skip
Given I am on the main application page
When I click on element located `By.xpath(//span[text()="Sign in"])`
When I ESTABLISH baseline with `sign in`
When I COMPARE AGAINST baseline with `sign in`
When I enter `${Email}` in field located `By.xpath(//input[@id="user-identifier-input"])`
When I enter `${Password}` in field located `By.xpath(//input[@id="password-input"])`
When I ESTABLISH baseline with `data`
When I COMPARE AGAINST baseline with `data`
When I click on element located `By.xpath(//button[@id="submit-button"])`
When I ESTABLISH baseline with `your account` ignoring:
|ELEMENT                  |
|By.xpath(//div[@id="orb-modules"])|
When I COMPARE AGAINST baseline with `your account` ignoring:
|ELEMENT                 |
|By.xpath(//div[@id="orb-modules"]) |     

Scenario: Nested steps
Given I am on the main application page
When the condition '#{("<id>"=="idcta-link")}' is true I do
|step|
|When I click on element located `By.xpath(//span[text()="Sign in"])`|
|When I click on element located `By.xpath(//span[text()="Register now"])`|





