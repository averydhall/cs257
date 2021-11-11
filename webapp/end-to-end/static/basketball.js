/*
 * basketball.js
 * Anders Shenholm 11/10/21
 * Everything in here right now is for rosters page
 */

window.onload = initialize;

function initialize() {
    loadYearSelector();
    loadTeamSelector();
    
    let year_selector = document.getElementById('year_selector');
    let team_selector = document.getElementById('team_selector');
    if (year_selector) {
        year_selector.onchange = onRostersSelectorChanged;
    }
    if (team_selector) {
        team_selector.onchange = onRostersSelectorChanged;
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

function onRostersSelectorChanged() {
    //if value not null:
    
    //inherits these values from initialize i guess?
    let team = team_selector.value;
    let year = year_selector.value;
    
    let url = getAPIBaseURL() + '/' + team + '/' + year;
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())
    
    
}
    /*
    let url = getAPIBaseURL() + '/' + authorID;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(books) {
        let tableBody = '';
        for (let k = 0; k < books.length; k++) {
            let book = books[k];
            tableBody += '<tr>'
                            + '<td>' + book['title'] + '</td>'
                            + '<td>' + book['publication_year'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let booksTable = document.getElementById('books_table');
        if (booksTable) {
            booksTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });*/


