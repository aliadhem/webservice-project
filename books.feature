Feature:
Books API for creating, deleting and listing the books 
Scenario:
Given url 'http://127.0.0.1/api/v1/resources/books/all'
When method get
Then status 200 
And print response 