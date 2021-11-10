/*
 * basketball.js
 * Anders Shenholm 11/10/21
 */

window.onload = initialize;

function initialize() {
    loadYearsSelector();

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

//this shouldn't really be how we do this (we can just fill with certain years, we don't need a query)
//I just have this here as an example/first step
function loadYearsSelector() {
    
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

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function onAuthorsSelectionChanged() {
    let authorID = this.value; 
    let url = getAPIBaseURL() + '/books/author/' + authorID;

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
    });
}

