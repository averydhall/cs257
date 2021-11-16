/*
    basketball.js
    Anders Shenholm and Avery Hall
    10, November 2021
*/

window.onload = initialize;

function initialize() {
    loadYearSelector();
    loadTeamSelector();

    let yearSelector = document.getElementById('year_selector');
    let teamSelector = document.getElementById('team_selector');
    //if(yearSelector)
    current_url = window.location.href

    if(current_url.includes("rosters")){
      if (yearSelector) {
          yearSelector.onchange = onRostersSelectorChanged;
      }
      if (teamSelector) {
          teamSelector.onchange = onRostersSelectorChanged;
      }
    }

    if(current_url.includes("rankings")){
      if (yearSelector) {
          yearSelector.onchange = onRankingsSelectorChanged;
      }
      if (teamSelector) {
          teamSelector.onchange = onRankingsSelectorChanged;
      }
    }

    loadPlayerSelector();
    let playerInput = document.getElementById('player_input');
    let showAdvancedStats = document.getElementById('advanced-stats');
    let showBoxScoreStats = document.getElementById('box-score-stats');
    /*loadAdvancedStatsCheckbox();*/

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

/*function loadAdvancedStatsCheckbox() {}*/

//this should be a simple list of ints 1950 to 2017, should just be in html
function loadYearSelector() {
    let selectorBody = '';
    for (let k = 0; k < 79; k++) {
        let year = 2017 - k;
        selectorBody += '<option value="' + year + '">'
                            + year + '</option>\n';
    }

    let selector = document.getElementById('year_selector');
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


// ----------------- ROSTERS -------------------
//Main funciton for loading rosters
//Potential things to add:
//Another table with stats for each player (option for box-score and advanced)
//link player names to player info page
function onRostersSelectorChanged() {

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
          str = "No roster exists for the requested team and year";
          tableBody+=str.bold();
        }


        // Put the table body we just built inside the table that's already on the page.
        let roster_table = document.getElementById('roster_table');
        if(roster_table){
            roster_table.innerHTML = tableBody;
        }


    })

    let showRosterTable = document.getElementById("roster_table");
    showRosterTable.style.display = "block";
}

// ----------------- PLAYER_INFO -------------------

/*function onShowAdvancedStatsChanged() {

  let showAS_Status = showAdvancedStats


}*/

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

    let player_url = player_input.value.split(' ').join('-');

    //GETTING BIO PARAGRAPH
    let bio_url = getAPIBaseURL() + '/player_info/bio/' + player_url;
    fetch(bio_url, {method: 'get'})
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


    //GETTING PLAYER STATS TABLE - This could be adjusted to display stats in a dift order if we want. We could also cook up out own rate based stats by taking stat totals / games played
    let stats_url = getAPIBaseURL() + '/player_info/stats/' + player_url;
    fetch(stats_url, {method: 'get'})
    .then((response) => response.json())

    .then(function(player_stats) {

        let tableBody = '';
        let showAdvancedStats = document.getElementById('advanced-stats');
        let showBoxScoreStats = document.getElementById('box-score-stats');

        if (player_stats.length != 0){

            tableBody += '<tr>'
                            + '<th>Year</th>'
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



        for (let k = 0; k < player_stats.length; k++) {
            let player_season = player_stats[k];

            tableBody += '<tr>'
                            //at some point we can add a link to player info page
                            + '<td>' + player_season['year'] + '</td>'
                            //+ '<td>' + player_season['name'] + '</td>'
                            //+ '<td>' + player_season['position'] + '</td>'
                            + '<td>' + player_season['age'] + '</td>'
                            + '<td class="team_in_player_stats"><a href=rosters.html}>' + player_season['team'] + '</a></td>'
                            + '<td>' + player_season['G'] + '</td>'
                            + '<td>' + player_season['GS'] + '</td>'
                            + '<td>' + player_season['MP'] + '</td>';


                            if (showBoxScoreStats.checked) {
                                tableBody += '<td>' + player_season['FG'] + '</td>'
                                + '<td>' + player_season['FGA'] + '</td>'
                                + '<td>' + player_season['FG_'] + '</td>'
                                + '<td>' + player_season['threeP'] + '</td>'
                                + '<td>' + player_season['threePA'] + '</td>'
                                + '<td>' + player_season['threeP_'] + '</td>'
                                + '<td>' + player_season['twoP'] + '</td>'
                                + '<td>' + player_season['twoPA'] + '</td>'
                                + '<td>' + player_season['twoP_'] + '</td>'
                                + '<td>' + player_season['eFG_'] + '</td>'
                                + '<td>' + player_season['FT'] + '</td>'
                                + '<td>' + player_season['FTA'] + '</td>'
                                + '<td>' + player_season['FT_'] + '</td>'
                                + '<td>' + player_season['ORB'] + '</td>'
                                + '<td>' + player_season['DRB'] + '</td>'
                                + '<td>' + player_season['TRB'] + '</td>'
                                + '<td>' + player_season['AST'] + '</td>'
                                + '<td>' + player_season['STL'] + '</td>'
                                + '<td>' + player_season['BLK'] + '</td>'
                                + '<td>' + player_season['TOV'] + '</td>'
                                + '<td>' + player_season['PF'] + '</td>'
                                + '<td>' + player_season['PTS'] + '</td>';
                            }
                            //Advanced stats

                            if (showAdvancedStats.checked) {
                              tableBody += '<td>' + player_season['PER'] + '</td>'
                              + '<td>' + player_season['TS_'] + '</td>'
                              + '<td>' + player_season['USG_'] + '</td>'
                              + '<td>' + player_season['OWS'] + '</td>'
                              + '<td>' + player_season['DWS'] + '</td>'
                              + '<td>' + player_season['WS'] + '</td>'
                              + '<td>' + player_season['WS_per_48'] + '</td>'
                              + '<td>' + player_season['OBPM'] + '</td>'
                              + '<td>' + player_season['DBPM'] + '</td>'
                              + '<td>' + player_season['BPM'] + '</td>'
                              + '<td>' + player_season['VORP'] + '</td>';
                            }


                            + '</tr>\n';

            //'<h2>' + player['name'] + '</h2>'
            //+ '<p>' + player['position'] + ', ' + player['height'] + ', ' + player['weight'] + 'lbs </p>'
            //+ '<p>Time in league:\n ' + player['first_year'] + '-' + player['last_year'] + '</p>'
            //+ '<p>Birthdate: ' + player['birth_date'] + '</p>'
            //+ '<p>College: ' + player['college'] + '</p>';





        }

      } //end of if statement
      else {
        str = "No season stats exist for the requested player";
        tableBody += str.bold();
      }

        // SETTING BIO PARAGRAPH
        let player_bio_text = document.getElementById('player_stats_table');
        if(player_bio_text){
            player_bio_text.innerHTML = tableBody;
        }



      let showPlayerStatsTable = document.getElementById("player_stats_table");
      showPlayerStatsTable.style.display = "block";

    })
}

ptsTableBody = '';
astTableBody = '';
rebTableBody = '';
stlTableBody = '';
blkTableBody = '';
tovTableBody = '';

function pushRankingsTables(){
    let full_table = '<table><tr><td>' + ptsTableBody + '</td><td>'+ astTableBody + '</td><td>'+ rebTableBody + '</td></tr><tr><td>'+ stlTableBody +'</td><td>'+ blkTableBody +'</td><td>'+ tovTableBody + '</td></tr><table>';

    let ranking_table = document.getElementById('stat_rankings');
      if(ranking_table){
          ranking_table.innerHTML = full_table;
      }
    ptsTableBody = '';
    astTableBody = '';
    rebTableBody = '';
    stlTableBody = '';
    blkTableBody = '';
    tovTableBody = '';

}

function onRankingsSelectorChanged() {

    var fullTableBody = ''
    let team = team_selector.value;
    let year = year_selector.value;

    //making points table
    let pts_url = getAPIBaseURL() + '/rankings/single-year/single-team/pts/' + team + '/' + year + '/';
    fetch(pts_url, {method: 'get'})
    .then((response) => response.json())
    .then(function(ranking) {
        ptsTableBody += '<table>' + '<th colspan="2"> Points </th>'
        //so we dont give header for teams that don't exist
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
        ptsTableBody += '</table>'

        if(ptsTableBody != '' &&
           astTableBody != '' &&
           rebTableBody != '' &&
           stlTableBody != '' &&
           blkTableBody != '' &&
           tovTableBody != ''){
            let full_table = pushRankingsTables();
        }
      })

        //making rebounds table
      let trb_url = getAPIBaseURL() + '/rankings/single-year/single-team/trb/' + team + '/' + year + '/';
      fetch(trb_url, {method: 'get'})
      .then((response) => response.json())
      .then(function(ranking) {
          rebTableBody += '<table>' + '<th colspan="2"> Rebounds </th>'
        //so we dont give header for teams that don't exist
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
        rebTableBody += '</table>'

        if(ptsTableBody != '' &&
           astTableBody != '' &&
           rebTableBody != '' &&
           stlTableBody != '' &&
           blkTableBody != '' &&
           tovTableBody != ''){
            let full_table = pushRankingsTables();
        }


    })

        //making assists table
        let ast_url = getAPIBaseURL() + '/rankings/single-year/single-team/ast/' + team + '/' + year + '/';
        fetch(ast_url, {method: 'get'})
        .then((response) => response.json())
        .then(function(ranking) {
            astTableBody += '<table>' + '<th colspan="2"> Assists </th>'
            //so we dont give header for teams that don't exist
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
            astTableBody += '</table>'

            if(ptsTableBody != '' &&
           astTableBody != '' &&
           rebTableBody != '' &&
           stlTableBody != '' &&
           blkTableBody != '' &&
           tovTableBody != ''){
            let full_table = pushRankingsTables();
            }
          })

          //making steals table
          let stl_url = getAPIBaseURL() + '/rankings/single-year/single-team/stl/' + team + '/' + year + '/';
          fetch(stl_url, {method: 'get'})
          .then((response) => response.json())
          .then(function(ranking) {
              stlTableBody += '<table>' + '<th colspan="2"> Steals </th>'
                //so we dont give header for teams that don't exist
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
                stlTableBody += '</table>'

                if(ptsTableBody != '' &&
                   astTableBody != '' &&
                   rebTableBody != '' &&
                   stlTableBody != '' &&
                   blkTableBody != '' &&
                   tovTableBody != ''){
                    let full_table = pushRankingsTables();
                }

            })

            //making blocks table
            let blk_url = getAPIBaseURL() + '/rankings/single-year/single-team/blk/' + team + '/' + year + '/';
            fetch(blk_url, {method: 'get'})
            .then((response) => response.json())
            .then(function(ranking) {
                blkTableBody += '<table>' + '<th colspan="2"> Blocks </th>'
                //so we dont give header for teams that don't exist
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
                blkTableBody += '</table>'

                if(ptsTableBody != '' &&
                   astTableBody != '' &&
                   rebTableBody != '' &&
                   stlTableBody != '' &&
                   blkTableBody != '' &&
                   tovTableBody != ''){
                    let full_table = pushRankingsTables();
                }
              })

              //making turnovers table
              let tov_url = getAPIBaseURL() + '/rankings/single-year/single-team/tov/' + team + '/' + year + '/';
              fetch(tov_url, {method: 'get'})
              .then((response) => response.json())
              .then(function(ranking) {
                tovTableBody += '<table>' + '<th colspan="2"> Turnovers </th>'
                //so we dont give header for teams that don't exist
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
                tovTableBody += '</table>'

                if(ptsTableBody != '' &&
                   astTableBody != '' &&
                   rebTableBody != '' &&
                   stlTableBody != '' &&
                   blkTableBody != '' &&
                   tovTableBody != ''){
                    let full_table = pushRankingsTables();
                }
                })

}
