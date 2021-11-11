/*
 * basketball.js
 * Anders Shenholm 11/10/21
 * Everything in here right now is for rosters page
 */

window.onload = initialize;

function initialize() {
    loadYearSelector();
    loadTeamSelector();
    
    let yearSelector = document.getElementById('year_selector');
    let teamSelector = document.getElementById('team_selector');
    if (yearSelector) {
        yearSelector.onchange = onRostersSelectorChanged;
    }
    if (teamSelector) {
        teamSelector.onchange = onRostersSelectorChanged;
    }
    

    loadPlayerSelector();
    let playerInput = document.getElementById('player_input');

    if (playerInput) {
        playerInput.onchange = onPlayerInputChanged;   
    }
}

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

// ----------------- ROSTERS -------------------

//this should be a simple list of ints 1950 to 2017, not a query
function loadYearSelector() {
    
    let url = getAPIBaseURL() + '/years';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(years) {
   
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < years.length; k++) {
            let year = years[k];
            selectorBody += '<option value="' + year['year'] + '">'
                                + year['year'] + '</option>\n';
        }
        

        let selector = document.getElementById('year_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })
}

//things to add:
//sort extinct teams to bottom of list
//give time range for extinct times so people aren't searching for rosters that don't exist
function loadTeamSelector() {
    
    let url = getAPIBaseURL() + '/teams';

    // Send the request to the books API /teams endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(teams) {
   
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < teams.length; k++) {
            let team = teams[k];
            selectorBody += '<option value="' + team['team'] + '">'
                                + team['team'] + '</option>\n';
        }
        

        let selector = document.getElementById('team_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })


    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

//Main funciton for loading rosters
//Potential things to add:
//Another table with stats for each player (option for box-score and advanced)
//link player names to player info page
function onRostersSelectorChanged() {
    //if value not null:
    
    //inherits these values from initialize i guess?
    let team = team_selector.value;
    let year = year_selector.value;
    
    let url = getAPIBaseURL() + '/rosters/' + team + '/' + year;
    fetch(url, {method: 'get'})
    

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())
    
    
    .then(function(roster) {
        let tableBody = '';
    
        //so we dont give header for teams that don't exist
        if (roster.length != 0){
            tableBody += '<tr>'
                            + '<th>Name</th>'
                            + '<th>Experience</th>'
                            + '<th>Postion</th>'
                            + '<th>Height</th>'
                            + '<th>Weight</th>'
                            + '<th>Birthdate</th>'
                            + '<th>College</th>'
                    + '</tr>\n';
        }
        
        for (let k = 0; k < roster.length; k++) {
            let player = roster[k];
            let experience = year - player['first_year'] 
            //experience measures how many previous seasons a player has played
            
            tableBody += '<tr>'
                            //at some point we can add a link to player info page
                            + '<td>' + player['name'] + '</td>'
                            + '<td>' + experience + '</td>'
                            + '<td>' + player['position'] + '</td>'
                            + '<td>' + player['height'] + '</td>'
                            + '<td>' + player['weight'] + '</td>'
                            + '<td>' + player['birth_date'] + '</td>'
                            + '<td>' + player['college'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let roster_table = document.getElementById('roster_table');
        if(roster_table){
            roster_table.innerHTML = tableBody;  
        }
        
            
    })
}

// ----------------- PLAYER_INFO -------------------
    
function loadPlayerSelector() {
    
    let url = getAPIBaseURL() + '/players';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(players) {
   
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < players.length; k++) {
            let player = players[k];
            selectorBody += '<option value="' + player['player'] + '">'
                                + player['player'] + '</option>\n';
        }
        
        
        let selector = document.getElementById('player_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })
}

function onPlayerInputChanged() {
    //GETTING BIO PARAGRAPH
    let player_url = player_input.value.split(' ').join('-');
    
    let url = getAPIBaseURL() + '/player_info/bio/' + player_url;
    fetch(url, {method: 'get'})
    .then((response) => response.json())
    
    
    .then(function(player_bio) {
        let paragraphBody = '';
        player = player_bio[0]
            
        paragraphBody += '<h2>' + player['name'] + '</h2>'
            + '<p>' + player['position'] + ', ' + player['height'] + ', ' + player['weight'] + 'lbs </p>'
            + '<p>Time in league:\n ' + player['first_year'] + '-' + player['last_year'] + '</p>'
            
            + '<p>Birthdate: ' + player['birth_date'] + '</p>'
            + '<p>College: ' + player['college'] + '</p>';
        
            
        // SETTING BIO PARAGRAPH
        let player_bio_text = document.getElementById('player_bio_text');
        if(player_bio_text){
            player_bio_text.innerHTML = paragraphBody;  
        }
        
            
    })
    
    
    //GETTING PLAYER STATS TABLE
    /*
    let player_url = player_input.value.split(' ').join('-');
    
    let url = getAPIBaseURL() + '/player_info/' + player_url + '/bio';
    fetch(url, {method: 'get'})
    .then((response) => response.json())
    
    
    .then(function(player_bio) {
        let paragraphBody = '';
        player = player_bio[0]
            
        paragraphBody += '<h2>' + player['name'] + '</h2>'
            + '<p>' + player['position'] + ', ' + player['height'] + ', ' + player['weight'] + 'lbs </p>'
            + '<p>Time in league:\n ' + player['first_year'] + '-' + player['last_year'] + '</p>'
            
            + '<p>Birthdate: ' + player['birth_date'] + '</p>'
            + '<p>College: ' + player['college'] + '</p>';
        
            
        // SETTING BIO PARAGRAPH
        let player_bio_text = document.getElementById('player_bio_text');
        if(player_bio_text){
            player_bio_text.innerHTML = paragraphBody;  
        }
        
            
    })*/
}