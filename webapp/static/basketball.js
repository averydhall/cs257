/*
    basketball.js
    Anders Shenholm and Avery Hall
    10, November 2021
*/

window.onload = initialize;

function initialize() {
    //year, team selectors are for rosters, rankings
    loadYearSelector();
    loadTeamSelector();
    //player selector is for player-info
    loadPlayerSelector();

    
    //setting rosters and rankings to respond to input change
    let yearSelector = document.getElementById('year-selector');
    let teamSelector = document.getElementById('team-selector');
    currentUrl = window.location.href
    
    if(currentUrl.includes("rosters")){
      if (yearSelector) {
          yearSelector.onchange = onRostersSelectorChanged;
      }
      if (teamSelector) {
          teamSelector.onchange = onRostersSelectorChanged;
      }
    }

    if(currentUrl.includes("rankings")){
      if (yearSelector) {
          yearSelector.onchange = onRankingsSelectorChanged;
      }
      if (teamSelector) {
          teamSelector.onchange = onRankingsSelectorChanged;
      }
    }

    //setting player-info to respond to input change
    let playerInput = document.getElementById('player-input');
    let showAdvancedStats = document.getElementById('advanced-stats');
    let showBoxScoreStats = document.getElementById('box-score-stats');
    
    if (playerInput) {
        playerInput.onchange = onPlayerInputChanged;
    }

    if (showAdvancedStats) {
        showAdvancedStats.onchange = onPlayerInputChanged;
    }
    if (showBoxScoreStats) {
        showBoxScoreStats.onchange = onPlayerInputChanged;
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


//this should be a simple list of ints 1950 to 2017, should just be in html
function loadYearSelector() {
    let selectorBody = '';
    for (let k = 0; k < 68; k++) {
        let year = 2017 - k;
        selectorBody += '<option value="' + year + '">'
                            + year + '</option>\n';
    }

    let selector = document.getElementById('year-selector');
    if (selector) {
        selector.innerHTML = selectorBody;
    }
}

//things to add:
//sort extinct teams to bottom of list
//give time range for extinct teams so people aren't searching for rosters that don't exist
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


        let selector = document.getElementById('team-selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })


    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}


// ----------------- ROSTERS -------------------
//Main funciton for loading rosters
//Potential things to add:
//Another table with stats for each player (option for box-score and advanced)
//link player names to player info page
function onRostersSelectorChanged() {

    //inherits these values from initialize i guess?
    let yearSelector = document.getElementById('year-selector');
    let teamSelector = document.getElementById('team-selector');
    let team = teamSelector.value;
    let year = yearSelector.value;

    let url = getAPIBaseURL() + '/rosters/' + team + '/' + year;
    fetch(url, {method: 'get'})


    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    .then(function(roster) {
        let tableBody = '';
        if (roster.length != 0) {

              tableBody += '<tr>'
                              + '<th>Name</th>'
                              + '<th>Experience</th>'
                              + '<th>Postion</th>'
                              + '<th>Height</th>'
                              + '<th>Weight</th>'
                              + '<th>Birthdate</th>'
                              + '<th>College</th>'
                              + '</tr>\n';


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
        }
        else{
          
          tableBody += "<td><b>This team didn't exist this year</b></td>";
        }


        // Put the table body we just built inside the table that's already on the page.
        let rosterTable = document.getElementById('roster-table');
        if(rosterTable){
            rosterTable.innerHTML = tableBody;
        }


    })

}

// ----------------- PLAYER-INFO -------------------


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


        let selector = document.getElementById('player-selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })
}

function onPlayerInputChanged() {
    let playerInput = document.getElementById('player-input');
    let playerUrl = playerInput.value.split(' ').join('-');

    //GETTING BIO PARAGRAPH
    let bioUrl = getAPIBaseURL() + '/player-info/bio/' + playerUrl;
    fetch(bioUrl, {method: 'get'})
    .then((response) => response.json())


    .then(function(playerBio) {
        
        let paragraphBody = '';
        player = playerBio[0]
        
        paragraphBody += '<h2>' + player['name'] + '</h2>'
            + '<p>' + player['position'] + ', ' + player['height'] + ', ' + player['weight'] + 'lbs </p>'
            + '<p>Time in league:\n ' + player['first_year'] + '-' + player['last_year'] + '</p>'
            + '<p>Birthdate: ' + player['birth_date'] + '</p>'
            + '<p>College: ' + player['college'] + '</p>';


        // SETTING BIO PARAGRAPH
        let playerBioText = document.getElementById('player-bio-text');
        if(playerBioText){
            playerBioText.innerHTML = paragraphBody;
        }


    })


    //GETTING PLAYER STATS TABLE
    let statsUrl = getAPIBaseURL() + '/player-info/stats/' + playerUrl;
    fetch(statsUrl, {method: 'get'})
    .then((response) => response.json())

    .then(function(playerStats) {

        let tableBody = '';
        let showAdvancedStats = document.getElementById('advanced-stats');
        let showBoxScoreStats = document.getElementById('box-score-stats');
        
        //checking that a player has stats
        if (playerStats.length != 0){
            //adding table headers
            tableBody += '<tr>'
                            + '<th style="position: sticky; left:0; border: 1px solid black;">Year</th>'
                            //+ '<th>name</th>'
                            //+ '<th>position</th>'
                            + '<th>Age</th>'
                            + '<th>Team</th>'
                            + '<th>G</th>'
                            + '<th>GS</th>'
                            + '<th>MP</th>';

                            if (showBoxScoreStats.checked) {
                                tableBody += '<th>FG</th>'
                                + '<th>FGA</th>'
                                + '<th>FG%</th>'
                                + '<th>3P</th>'
                                + '<th>3PA</th>'
                                + '<th>3P%</th>'
                                + '<th>2P</th>'
                                + '<th>2PA</th>'
                                + '<th>2P%</th>'
                                + '<th>eFG%</th>'
                                + '<th>FT</th>'
                                + '<th>FTA</th>'
                                + '<th>FT%</th>'
                                + '<th>ORB</th>'
                                + '<th>DRB</th>'
                                + '<th>TRB</th>'
                                + '<th>AST</th>'
                                + '<th>STL</th>'
                                + '<th>BLK</th>'
                                + '<th>TOV</th>'
                                + '<th>PF</th>'
                                + '<th>PTS</th>'
                            }
                            if (showAdvancedStats.checked) {
                              tableBody += '<th>PER</th>'
                              + '<th>TS%</th>'
                              + '<th>USG%</th>'
                              + '<th>OWS</th>'
                              + '<th>DWS</th>'
                              + '<th>WS</th>'
                              + '<th>WS_per_48</th>'
                              + '<th>OBPM</th>'
                              + '<th>DBPM</th>'
                              + '<th>BPM</th>'
                              + '<th>VORP</th>';
                            }
                            + '</tr>\n';



        for (let k = 0; k < playerStats.length; k++) {
            let playerSeason = playerStats[k];
            //adding table data
            tableBody += '<tr>'
                            //at some point we can add a link to player info page
                            + '<td style="position: sticky; left:0; border-right: 1px solid black;">' + playerSeason['year'] + '</td>'
                            //+ '<td>' + playerSeason['name'] + '</td>'
                            //+ '<td>' + playerSeason['position'] + '</td>'
                            + '<td>' + playerSeason['age'] + '</td>'
                            + '<td class="team-in-player-stats"><a href=rosters.html}>' + playerSeason['team'] + '</a></td>'
                            + '<td>' + playerSeason['G'] + '</td>'
                            + '<td>' + playerSeason['GS'] + '</td>'
                            + '<td>' + playerSeason['MP'] + '</td>';


                            if (showBoxScoreStats.checked) {
                                tableBody += '<td>' + playerSeason['FG'] + '</td>'
                                + '<td>' + playerSeason['FGA'] + '</td>'
                                + '<td>' + playerSeason['FG_'] + '</td>'
                                + '<td>' + playerSeason['threeP'] + '</td>'
                                + '<td>' + playerSeason['threePA'] + '</td>'
                                + '<td>' + playerSeason['threeP_'] + '</td>'
                                + '<td>' + playerSeason['twoP'] + '</td>'
                                + '<td>' + playerSeason['twoPA'] + '</td>'
                                + '<td>' + playerSeason['twoP_'] + '</td>'
                                + '<td>' + playerSeason['eFG_'] + '</td>'
                                + '<td>' + playerSeason['FT'] + '</td>'
                                + '<td>' + playerSeason['FTA'] + '</td>'
                                + '<td>' + playerSeason['FT_'] + '</td>'
                                + '<td>' + playerSeason['ORB'] + '</td>'
                                + '<td>' + playerSeason['DRB'] + '</td>'
                                + '<td>' + playerSeason['TRB'] + '</td>'
                                + '<td>' + playerSeason['AST'] + '</td>'
                                + '<td>' + playerSeason['STL'] + '</td>'
                                + '<td>' + playerSeason['BLK'] + '</td>'
                                + '<td>' + playerSeason['TOV'] + '</td>'
                                + '<td>' + playerSeason['PF'] + '</td>'
                                + '<td>' + playerSeason['PTS'] + '</td>';
                            }
                            //Advanced stats

                            if (showAdvancedStats.checked) {
                              tableBody += '<td>' + playerSeason['PER'] + '</td>'
                              + '<td>' + playerSeason['TS_'] + '</td>'
                              + '<td>' + playerSeason['USG_'] + '</td>'
                              + '<td>' + playerSeason['OWS'] + '</td>'
                              + '<td>' + playerSeason['DWS'] + '</td>'
                              + '<td>' + playerSeason['WS'] + '</td>'
                              + '<td>' + playerSeason['WS_per_48'] + '</td>'
                              + '<td>' + playerSeason['OBPM'] + '</td>'
                              + '<td>' + playerSeason['DBPM'] + '</td>'
                              + '<td>' + playerSeason['BPM'] + '</td>'
                              + '<td>' + playerSeason['VORP'] + '</td>';
                            }


                            + '</tr>\n';


        }

      } //end of if statement
      else {
        str = "No season stats exist for the requested player";
        tableBody += '<td>' + str.bold() + '</td>';
      }

        // SETTING STATS TABLE
        let playerStatsTable = document.getElementById('player-stats-table');
        if(playerStatsTable){
            playerStatsTable.innerHTML = tableBody;
        }

    })
}

ptsTableBody = '';
astTableBody = '';
rebTableBody = '';
stlTableBody = '';
blkTableBody = '';
tovTableBody = '';
teamExists = false;

function pushRankingsTables(){
    let fullTable = '<tr><td>' + ptsTableBody + '</td><td>'+ astTableBody + '</td><td>'+ rebTableBody + '</td></tr><tr><td>'+ stlTableBody +'</td><td>'+ blkTableBody +'</td><td>'+ tovTableBody + '</td></tr>';
    
    let rankingTable = document.getElementById('rankings-table');
      if(rankingTable){
          if (teamExists === false){
                rankingTable.innerHTML = "<td><b>This team didn't exist this year</b></td>";
          }
          else{
              rankingTable.innerHTML = fullTable;
          }
      }
    
    //reinitialize global variables for the next time onRankingsSelectorChanged is called
    ptsTableBody = '';
    astTableBody = '';
    rebTableBody = '';
    stlTableBody = '';
    blkTableBody = '';
    tovTableBody = '';
    teamExists = false;

}

function onRankingsSelectorChanged() {
    let yearSelector = document.getElementById('year-selector');
    let teamSelector = document.getElementById('team-selector');
    let team = teamSelector.value;
    let year = yearSelector.value;

    //making points table
    let ptsUrl = getAPIBaseURL() + '/rankings/single-year/single-team/pts/' + team + '/' + year + '/';
    fetch(ptsUrl, {method: 'get'})
    .then((response) => response.json())
    .then(function(ranking) {
        ptsTableBody += '<table>' + '<th colspan="2"> Points </th>'
        if (ranking[0]){
            teamExists = true; //this is in every method - marking that the team exists (has some stats to display)
            for (let k = 0; k < ranking.length; k++) {
                let player = ranking[k];
                  ptsTableBody += '<tr>'
                  + '<td>'
                  + player['name']
                  + '</td>'
                  + '<td>'
                  + player['stat_total']
                  + '</td>'
                  + '</tr>'
            }
        }
        else{
            ptsTableBody += '<tr><td colspan="2">No Data</td></tr>'
        }
        ptsTableBody += '</table>'

        if(ptsTableBody != '' &&
           astTableBody != '' &&
           rebTableBody != '' &&
           stlTableBody != '' &&
           blkTableBody != '' &&
           tovTableBody != ''){
            let fullTable = pushRankingsTables();
        }
      })

        //making rebounds table
      let trbUrl = getAPIBaseURL() + '/rankings/single-year/single-team/trb/' + team + '/' + year + '/';
      fetch(trbUrl, {method: 'get'})
      .then((response) => response.json())
      .then(function(ranking) {
        rebTableBody += '<table>' + '<th colspan="2"> Rebounds </th>'
        if (ranking[0]){
            teamExists = true; //this is in every method - marking that the team exists (has some stats to display)
            for (let k = 0; k < ranking.length; k++) {
                let player = ranking[k];
                  rebTableBody += '<tr>'
                  + '<td>'
                  + player['name']
                  + '</td>'
                  + '<td>'
                  + player['stat_total']
                  + '</td>'
                  + '</tr>'
            }
            
        }
        else{
            rebTableBody += '<tr><td colspan="2">No Data</td></tr>'
        }
        rebTableBody += '</table>'  
        

        if(ptsTableBody != '' &&
           astTableBody != '' &&
           rebTableBody != '' &&
           stlTableBody != '' &&
           blkTableBody != '' &&
           tovTableBody != ''){
            let fullTable = pushRankingsTables();
        }


    })

        //making assists table
        let astUrl = getAPIBaseURL() + '/rankings/single-year/single-team/ast/' + team + '/' + year + '/';
        fetch(astUrl, {method: 'get'})
        .then((response) => response.json())
        .then(function(ranking) {
            astTableBody += '<table>' + '<th colspan="2"> Assists </th>'
            if(ranking[0]){
                teamExists = true; //this is in every method - marking that the team exists (has some stats to display)
                for (let k = 0; k < ranking.length; k++) {
                    let player = ranking[k];
                      astTableBody += '<tr>'
                      + '<td>'
                      + player['name']
                      + '</td>'
                      + '<td>'
                      + player['stat_total']
                      + '</td>'
                      + '</tr>'
                }
            }
            else{
                astTableBody += '<tr><td colspan="2">No Data</td></tr>'
            }
            astTableBody += '</table>'

            if(ptsTableBody != '' &&
           astTableBody != '' &&
           rebTableBody != '' &&
           stlTableBody != '' &&
           blkTableBody != '' &&
           tovTableBody != ''){
            let fullTable = pushRankingsTables();
            }
            
          })

          //making steals table
          let stlUrl = getAPIBaseURL() + '/rankings/single-year/single-team/stl/' + team + '/' + year + '/';
          fetch(stlUrl, {method: 'get'})
          .then((response) => response.json())
          .then(function(ranking) {
              stlTableBody += '<table>' + '<th colspan="2"> Steals </th>'
              if(ranking[0]){
                    teamExists = true; //this is in every method - marking that the team exists (has some stats to display)
                    for (let k = 0; k < ranking.length; k++) {
                        let player = ranking[k];
                          stlTableBody += '<tr>'
                          + '<td>'
                          + player['name']
                          + '</td>'
                          + '<td>'
                          + player['stat_total']
                          + '</td>'
                          + '</tr>'
                    }
                }
                else{
                    stlTableBody += '<tr><td colspan="2">No Data</td></tr>'
                }
                stlTableBody += '</table>'

                if(ptsTableBody != '' &&
                   astTableBody != '' &&
                   rebTableBody != '' &&
                   stlTableBody != '' &&
                   blkTableBody != '' &&
                   tovTableBody != ''){
                    let fullTable = pushRankingsTables();
                }

            })

            //making blocks table
            let blkUrl = getAPIBaseURL() + '/rankings/single-year/single-team/blk/' + team + '/' + year + '/';
            fetch(blkUrl, {method: 'get'})
            .then((response) => response.json())
            .then(function(ranking) {
                blkTableBody += '<table>' + '<th colspan="2"> Blocks </th>'
                if(ranking[0]){
                    teamExists = true; //this is in every method - marking that the team exists (has some stats to display)
                    for (let k = 0; k < ranking.length; k++) {
                        let player = ranking[k];
                          blkTableBody += '<tr>'
                          + '<td>'
                          + player['name']
                          + '</td>'
                          + '<td>'
                          + player['stat_total']
                          + '</td>'
                          + '</tr>'
                    }
                }
                else{
                        blkTableBody += '<tr><td colspan="2">No Data</td></tr>'
                    }
                blkTableBody += '</table>'

                if(ptsTableBody != '' &&
                   astTableBody != '' &&
                   rebTableBody != '' &&
                   stlTableBody != '' &&
                   blkTableBody != '' &&
                   tovTableBody != ''){
                    let fullTable = pushRankingsTables();
                }
              })

              //making turnovers table
              let tovUrl = getAPIBaseURL() + '/rankings/single-year/single-team/tov/' + team + '/' + year + '/';
              fetch(tovUrl, {method: 'get'})
              .then((response) => response.json())
              .then(function(ranking) {
                tovTableBody += '<table>' + '<th colspan="2"> Turnovers </th>'
                  if (ranking[0]){
                    teamExists = true; //this is in every method - marking that the team exists (has some stats to display)
                    for (let k = 0; k < ranking.length; k++) {
                        let player = ranking[k];
                          tovTableBody += '<tr>'
                          + '<td>'
                          + player['name']
                          + '</td>'
                          + '<td>'
                          + player['stat_total']
                          + '</td>'
                          + '</tr>'
                    }
                }
                else{
                    tovTableBody += '<tr><td colspan="2">No Data</td></tr>'
                }
                tovTableBody += '</table>'

                if(ptsTableBody != '' &&
                   astTableBody != '' &&
                   rebTableBody != '' &&
                   stlTableBody != '' &&
                   blkTableBody != '' &&
                   tovTableBody != ''){
                    let fullTable = pushRankingsTables();
                }
                })

}
