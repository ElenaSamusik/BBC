Scenario: Visual Testing
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



  




