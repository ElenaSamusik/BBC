Scenario: API testing
Given request body: {
	"id": "user-identifier-input",
	"username"="samusik_elena@mail.ru"
	"password"="1119238Samusik"    
}
When I issue a HTTP GET request for a resource with the URL '${mainPage}/Sign In'
Then the response code is equal to '200'

 