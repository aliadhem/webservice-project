Feature: Game API





 Background:
    * url 'http://localhost'




 Scenario: GET request to retrieve all games
    Given path '/api/v1/resources/games/all'
    When method GET
    Then status 200
    And match response == '#[5]'


   Scenario: GET request to retrieve a specific game by ID
          Given path '/api/v1/resources/games'
          And param id = 2    // Replace <game_id> with the ID of the game to retrieve
          When method GET
          Then status 200
          And match $.[0].title == 'The Legend of Zelda: Ocarina of Time'
    




 Scenario: POST request to add a new game
    Given path '/api/v1/resources/games'
    And request { id: 5, title: 'Call of Duty', console: 'PS5', description: 'call of duty description', year: '1990' }
    And header Content-Type = 'application/json'
    When method POST
    Then status 200




 Scenario: DELETE request to delete a game by ID
    Given path '/api/v1/resources/games'
    And param id = 0
    When method DELETE
    Then status 200