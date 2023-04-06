Feature:
This is a test feature
Scenario:
Given url 'https://httpbin.org/anything'
And request { myKey: 'myValue' }
When method post
Then status 200
And match response.json == { myKey: 'myValue' }

Given path response.json.myKey
When method get
Then status 200
