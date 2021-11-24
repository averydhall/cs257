/*
    basketball.js
    All js for hoopdata webapp
    Anders Shenholm and Avery Hall
    November 23, 2021
*/

window.onload = initialize;

//initialize runs every time a new page loads
//a new page loads when a user navigates to a different page
//or changes search selections in rankings, rosters, or player_info
function initialize() {
    // ------- loading roster page -------

    loadRostersTeamSelector();
    loadRostersYearSelector();


    let rostersYearSelector = document.getElementById('rosters-year-selector');
    let rostersTeamSelector = document.getElementById('rosters-team-selector');
        //once rosters page is loaded, fill the table
      if (rostersTeamSelector) {
          fillRostersTable();
      }

        //setting rosters to change url as input changes
      if (rostersYearSelector) {
          rostersYearSelector.onchange = updateRostersUrl;
      }
      if (rostersTeamSelector) {
          rostersTeamSelector.onchange = updateRostersUrl;
      }


    // ------- loading rankings page --------
    loadRankingsTeamSelector();
    loadRankingsYearSelector();


    //setting rankings to change url as input changes
    let rankingsYearSelector = document.getElementById('rankings-year-selector');
    let rankingsTeamSelector = document.getElementById('rankings-team-selector');
      //once rankings page is loaded, fill the table
        if (rankingsYearSelector) {
            fillRankingsTable()
      }
        //if selection changes, update url to load the appropriate page
      if (rankingsYearSelector) {
          rankingsYearSelector.onchange = updateRankingsUrl;
      }
      if (rankingsTeamSelector) {
          rankingsTeamSelector.onchange = updateRankingsUrl;
      }


    // ------- loading player-info page --------
    loadPlayerSelector();
    //setting player-info to respond to input change
    let playerInput = document.getElementById('player-input');
    let showAdvancedStats = document.getElementById('advanced-stats-checkbox');
    let showBoxScoreStats = document.getElementById('box-score-stats-checkbox');

    //once player page is loaded, fill the table
    if (showBoxScoreStats || showAdvancedStats){
        fillPlayerInfoTable()
    }

    //setting player-info to change url as input changes
    if (playerInput) {
        playerInput.onchange = updatePlayerInfoUrl;
    }

    //telling player-info to re-fill table as different options are selected
    if (showAdvancedStats) {
        showAdvancedStats.onchange = fillPlayerInfoTable;
    }
    if (showBoxScoreStats) {
        showBoxScoreStats.onchange = fillPlayerInfoTable;
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

//this function runs every time rosters is loaded
//it takes the year from the url (either generated from selections or entered manually)
//then it assembles the list of year options (1950-2017), selecting by default the year in the url
function loadRostersYearSelector() {
    let selector = document.getElementById('rosters-year-selector');
    //so this doesn't run on wrong page
    if(selector){
        let selectorBody = '';
        selectorBody += '<option selected disabled hidden> - </option>';
        let selectedYear = selector.getAttribute('class');
        for (let k = 0; k < 68; k++) {
            let year = 2017 - k;
            if (year == parseInt(selectedYear)){
                selectorBody += '<option value="' + year + '"selected>'
                                    + year + '</option>\n';

            }
            else{
                selectorBody += '<option value="' + year + '">'
                                    + year + '</option>\n';
            }
        }
        selector.innerHTML = selectorBody;

    }
    //

}


//this function runs every time rosters is loaded
//it takes the team from the url (either generated from selections or entered manually)
//then it assembles the list of team options, selecting by default the team in the url

function loadRostersTeamSelector() {
        let selector = document.getElementById('rosters-team-selector');
        if (selector) {
              //setting our list of teams to pick
              let selectorBody = '<option selected disabled hidden> - </option>' +
              '<option disabled>--- Active Teams --------------------------------</option>' +

              '<option value="ATL">Atlanta Hawks (1969-) </option>' +
              '<option value="BOS">Boston Celtics (1950-) </option>' +
              '<option value="BRK">Brooklyn Nets (2013-)</option>' +
              '<option value="CHO">Charlotte Hornets (2015-) </option>' +
              '<option value="CHI">Chicago Bulls (1967-)</option>' +
              '<option value="CLE">Cleveland Cavaliers (1971-)</option>' +
                '<option value="DAL">Dallas Mavericks (1981-)</option>' +
                '<option value="DEN">Denver Nuggets (1977-)</option>' +
                '<option value="DET">Detroit Pistons (1958-)</option>' +
                '<option value="GSW">Golden State Warriors (1972-)</option>' +
                '<option value="HOU">Houston Rockets (1972-)</option>' +
                '<option value="IND">Indiana Pacers (1977-)</option>' +
                '<option value="LAC">Los Angeles Clippers (1985-)</option>' +
                '<option value="LAL">Los Angeles Lakers (1961-)</option>' +
                '<option value="MEM">Memphis Grizzlies (2002-)</option>' +
                '<option value="MIA">Miami Heat (1989-)</option>' +
                '<option value="MIL">Milwaukee Bucks (1969-)</option>' +
                '<option value="MIN">Minnesota Timberwolves (1990-)</option>' +
                '<option value="NOP">New Orleans Pelicans (2014-)</option>' +
                '<option value="NYK">New York Knicks (1950-)</option>' +
                '<option value="OKC">Oklahoma City Thunder (2009-)</option>' +
                '<option value="ORL">Orlando Magic (1990-)</option>' +
                '<option value="PHI">Philadelphia 76ers (1964-)</option>' +
                '<option value="PHO">Phoenix Suns (1969-)</option>' +
                '<option value="POR">Portland Trail Blazers (1971-)</option>' +
                '<option value="SAC">Sacramento Kings (1986-)</option>' +
                '<option value="SAS">San Antonio Spurs (1977-)</option>' +
                '<option value="TOR">Toronto Raptors (1996-)</option>' +
                '<option value="UTA">Utah Jazz (1980-)</option>' +
                '<option value="WAS">Washington Wizards (1998-)</option>' +

                '<option disabled>--- Defunct Teams -------------------------------</option>' +

                '<option value="AND">Anderson Packers (1950-1950)</option>' +
                '<option value="BAL">Baltimore Bullets (1964-1973)</option>' +
                '<option value="BLB">Baltimore Bullets (1950-1955)</option>' +
                '<option value="BUF">Buffalo Braves (1971-1978)</option>' +
                '<option value="CAP">Capital Bullets (1974-1974)</option>' +
                '<option value="CHH">Charlotte Hornets (1989-2002)</option>' +
                '<option value="CHA">Charlotte Bobcats (2005-2014)</option>' +
                '<option value="CHP">Chicago Packers (1962-1962)</option>' +
                '<option value="CHS">Chicago Stags (1950-1950)</option>' +
                '<option value="CHZ">Chicago Zephyrs (1963-1963)</option>' +
                '<option value="CIN">Cincinnati Royals (1958-1972)</option>' +
                '<option value="DNN">Denver Nuggets (1950-1950)</option>' +
                '<option value="FTW">Fort Wayne Pistons (1950-1957)</option>' +
                '<option value="INO">Indianapolis Olympians (1950-1953)</option>' +
                '<option value="KCK">Kansas City Kings (1976-1985)</option>' +
                '<option value="KCO">Kansas City-Omaha Kings (1973-1975)</option>' +
                '<option value="MLH">Milwaukee Hawks (1952-1955)</option>' +
                '<option value="MNL">Minneapolis Lakers (1950-1960)</option>' +
                '<option value="NJN">New Jersey Nets (1978-2012)</option>' +
                '<option value="NOH">New Orleans Hornets (2003-2013)</option>' +
                '<option value="NOJ">New Orleans Jazz (1975-1979)</option>' +
                '<option value="NOK">New Orleans/Oklahoma City Hornets (2006-2007)</option>' +
                '<option value="NYN">New York Nets (1977-1977)</option>' +
                '<option value="PHW">Philadelphia Warriors (1950-1962)</option>' +
                '<option value="ROC">Rochester Royals (1950-1957)</option>' +
                '<option value="SDC">San Diego Clippers (1979-1984)</option>' +
                '<option value="SDR">San Diego Rockets (1968-1971)</option>' +
                '<option value="SEA">Seattle Supersonics (1968-2008)</option>' +
                '<option value="SFW">San Francisco Warriors (1963-1971)</option>' +
                //just gonna omit this one
                //'<option value="SHE">SHE - Sheboygan Red Skins(1950-1950)</option>' +
                '<option value="STB">St. Louis Bombers (1950-1950)</option>' +
                '<option value="STL">St. Louis Hawks (1956-1968)</option>' +
                '<option value="SYR">Syracuse Nationals (1950-1963)</option>' +
                '<option value="TRI">Tri-Cities Blackhawks (1950-1951)</option>' +
                '<option value="VAN">Vancouver Grizzlies (1996-2001)</option>' +
                '<option value="WAT">Waterloo Hawks (1950-1950)</option>' +
                '<option value="WSB">Washington Bullets (1975-1997)</option>' +
                '<option value="WSC">Washington Capitols (1950-1951)</option>';


            //marking one team as selected. This team's abreviation is added to
            //rosters-team-selector as a class whenever rosters/<team_name>/<year> is called.

            //this string manipulation relies on the options in selectorBody being written exactly with:
            //<option value="[TEAM ABREVIATION]">

            let selectedTeam = selector.getAttribute('class');
            let selectedTeamTag = ' value="' + selectedTeam + '"'
            let finalSelectedTeamTag = selectedTeamTag + ' selected'

            if (selectorBody.includes(selectedTeamTag)){
                selectorBody = selectorBody.replace(selectedTeamTag, finalSelectedTeamTag)
            }

            selector.innerHTML = selectorBody;
    }
}


//this function changes the url (then loads a new page) if the user selection changes
function updateRostersUrl(){
    let year = document.getElementById('rosters-year-selector').value;
    let team = document.getElementById('rosters-team-selector').value;
    window.location.href = '/rosters/' + team + '/' + year;
}


//this function generates rosters and sets them in roster-table html element

function fillRostersTable() {

    let year = document.getElementById('rosters-year-selector').value;
    let team = document.getElementById('rosters-team-selector').value;


        let url = getAPIBaseURL() + '/rosters/' + team + '/' + year;
        fetch(url, {method: 'get'})



        // When the results come back, transform them from a JSON string into
        // a Javascript object (in this case, a list of author dictionaries).
        .then((response) => response.json())

        .then(function(roster) {

            let yearSelector = document.getElementById('rosters-year-selector');
            let selectedYear = yearSelector.getAttribute('class');

            let teamSelector = document.getElementById('rosters-team-selector');
            let selectedTeam = teamSelector.input;


            let tableBody = '';

            if ((selectedYear == '-') || (selectedTeam == '-')
                      || ((selectedYear == null) && (selectedTeam == null))) {
              tableBody += "<td><b>Select a team and year...</b></td>";
            }

            else if (roster.length == 0) {
              tableBody += "<td><b>This team didn't exist this year</b></td>";
            }

            else {

                  tableBody += '<tr>'
                                  + '<th>Name</th>'
                                  + '<th id="experience-info">Years Played</th>'
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
                                  //linking to player-info page
                                  + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_') + '">' + player['name'] + '</a></td>'
                                  + '<td>' + experience + '</td>'
                                  + '<td>' + player['position'] + '</td>'
                                  + '<td>' + player['height'] + '</td>'
                                  + '<td>' + player['weight'] + '</td>'
                                  + '<td>' + player['birth_date'] + '</td>'
                                  + '<td>' + player['college'] + '</td>'
                                  + '</tr>\n';
              }
            }

            // Put the table body we just built inside the table that's already on the page.
            let rosterTable = document.getElementById('roster-table');
            if(rosterTable){
                rosterTable.innerHTML = tableBody;
            }


        })
        .catch(function(error) {

            console.log(error);
        });


}



//------------ END ROSTERS ------------
//------------ BEGIN RANKINGS ------------

//variables used to :
//1: check if we're ready to call pushRankingsTables
//2: construct a full rankings table in pushRankingsTables
ptsTableBody = '';
astTableBody = '';
rebTableBody = '';
stlTableBody = '';
blkTableBody = '';
tovTableBody = '';

//if !teamExists (based on selections), we indicate that there is no data to show
teamExists = false;
validRankingsSearch = true;


//this function runs every time rankings is loaded
//it takes the year from the url (either generated from selections or entered manually)
//then it assembles the list of year options, selecting by default the team in the url
function loadRankingsYearSelector() {
    let selector = document.getElementById('rankings-year-selector');
    //so this doesn't run on player-info page
    if(selector){
        let selectorBody = '';
        selectorBody += '<option selected disabled hidden> - </option>';
        let selectedYear = selector.getAttribute('class');
        for (let k = 0; k < 68; k++) {
            let year = 2017 - k;
            if (year == parseInt(selectedYear)){
                selectorBody += '<option value="' + year + '"selected>'
                                    + year + '</option>\n';

            }
            else{
                selectorBody += '<option value="' + year + '">'
                                    + year + '</option>\n';
            }
        }
        selector.innerHTML = selectorBody;
    }

}

//this function runs every time rankings is loaded
//it takes the team from the url (either generated from selections or entered manually)
//then it assembles the list of team options, selecting by default the team in the url
function loadRankingsTeamSelector() {
        let selector = document.getElementById('rankings-team-selector');
        if (selector) {
              //setting our list of teams to pick
              let selectorBody = '<option selected disabled hidden> - </option>' +
              '<option disabled>--- Active Teams --------------------------------</option>' +
              '<option value="ATL">Atlanta Hawks (1969-) </option>' +
              '<option value="BOS">Boston Celtics (1950-) </option>' +
              '<option value="BRK">Brooklyn Nets (2013-)</option>' +
              '<option value="CHO">Charlotte Hornets (2015-) </option>' +
              '<option value="CHI">Chicago Bulls (1967-)</option>' +
              '<option value="CLE">Cleveland Cavaliers (1971-)</option>' +
                '<option value="DAL">Dallas Mavericks (1981-)</option>' +
                '<option value="DEN">Denver Nuggets (1977-)</option>' +
                '<option value="DET">Detroit Pistons (1958-)</option>' +
                '<option value="GSW">Golden State Warriors (1972-)</option>' +
                '<option value="HOU">Houston Rockets (1972-)</option>' +
                '<option value="IND">Indiana Pacers (1977-)</option>' +
                '<option value="LAC">Los Angeles Clippers (1985-)</option>' +
                '<option value="LAL">Los Angeles Lakers (1961-)</option>' +
                '<option value="MEM">Memphis Grizzlies (2002-)</option>' +
                '<option value="MIA">Miami Heat (1989-)</option>' +
                '<option value="MIL">Milwaukee Bucks (1969-)</option>' +
                '<option value="MIN">Minnesota Timberwolves (1990-)</option>' +
                '<option value="NOP">New Orleans Pelicans (2014-)</option>' +
                '<option value="NYK">New York Knicks (1950-)</option>' +
                '<option value="OKC">Oklahoma City Thunder (2009-)</option>' +
                '<option value="ORL">Orlando Magic (1990-)</option>' +
                '<option value="PHI">Philadelphia 76ers (1964-)</option>' +
                '<option value="PHO">Phoenix Suns (1969-)</option>' +
                '<option value="POR">Portland Trail Blazers (1971-)</option>' +
                '<option value="SAC">Sacramento Kings (1986-)</option>' +
                '<option value="SAS">San Antonio Spurs (1977-)</option>' +
                '<option value="TOR">Toronto Raptors (1996-)</option>' +
                '<option value="UTA">Utah Jazz (1980-)</option>' +
                '<option value="WAS">Washington Wizards (1998-)</option>' +

                '<option disabled>--- Defunct Teams -------------------------------</option>' +

                '<option value="AND">Anderson Packers (1950-1950)</option>' +
                '<option value="BAL">Baltimore Bullets (1964-1973)</option>' +
                '<option value="BLB">Baltimore Bullets (1950-1955)</option>' +

                '<option value="BUF">Buffalo Braves (1971-1978)</option>' +
                '<option value="CAP">Capital Bullets (1974-1974)</option>' +
                '<option value="CHH">Charlotte Hornets (1989-2002)</option>' +
                '<option value="CHA">Charlotte Bobcats (2005-2014)</option>' +
                '<option value="CHP">Chicago Packers (1962-1962)</option>' +
                '<option value="CHS">Chicago Stags (1950-1950)</option>' +
                '<option value="CHZ">Chicago Zephyrs (1963-1963)</option>' +
                '<option value="CIN">Cincinnati Royals (1958-1972)</option>' +
                '<option value="DNN">Denver Nuggets (1950-1950)</option>' +
                '<option value="FTW">Fort Wayne Pistons (1950-1957)</option>' +
                '<option value="INO">Indianapolis Olympians (1950-1953)</option>' +
                '<option value="KCK">Kansas City Kings (1976-1985)</option>' +
                '<option value="KCO">Kansas City-Omaha Kings (1973-1975)</option>' +
                '<option value="MLH">Milwaukee Hawks (1952-1955)</option>' +
                '<option value="MNL">Minneapolis Lakers (1950-1960)</option>' +
                '<option value="NJN">New Jersey Nets (1978-2012)</option>' +
                '<option value="NOH">New Orleans Hornets (2003-2013)</option>' +
                '<option value="NOJ">New Orleans Jazz (1975-1979)</option>' +
                '<option value="NOK">New Orleans/Oklahoma City Hornets (2006-2007)</option>' +
                '<option value="NYN">New York Nets (1977-1977)</option>' +
                '<option value="PHW">Philadelphia Warriors (1950-1962)</option>' +
                '<option value="ROC">Rochester Royals (1950-1957)</option>' +
                '<option value="SDC">San Diego Clippers (1979-1984)</option>' +
                '<option value="SDR">San Diego Rockets (1968-1971)</option>' +
                '<option value="SEA">Seattle Supersonics (1968-2008)</option>' +
                '<option value="SFW">San Francisco Warriors (1963-1971)</option>' +
                //probably just omit this one
                //'<option value="SHE">SHE - Sheboygan Red Skins(1950-1950)</option>' +
                '<option value="STB">St. Louis Bombers (1950-1950)</option>' +
                '<option value="STL">St. Louis Hawks (1956-1968)</option>' +
                '<option value="SYR">Syracuse Nationals (1950-1963)</option>' +
                '<option value="TRI">Tri-Cities Blackhawks (1950-1951)</option>' +
                '<option value="VAN">Vancouver Grizzlies (1996-2001)</option>' +
                '<option value="WAT">Waterloo Hawks (1950-1950)</option>' +
                '<option value="WSB">Washington Bullets (1975-1997)</option>' +
                '<option value="WSC">Washington Capitols (1950-1951)</option>';


            //marking one team as selected. This team's abreviation is passed to
            //rosters-team-selector as a class whenever rosters/<team_name>/<year> is called.
            //this relies on the options in selectorBody being written exactly with:
            //<option value="[TEAM ABREVIATION]">
            let selectedTeam = selector.getAttribute('class');
            let selectedTeamTag = ' value="' + selectedTeam + '"'
            let finalSelectedTeamTag = selectedTeamTag + ' selected'

            if (selectorBody.includes(selectedTeamTag)){
                selectorBody = selectorBody.replace(selectedTeamTag, finalSelectedTeamTag)
            }

            selector.innerHTML = selectorBody;
    }
}


//this function changes the url if the user selection changes
function updateRankingsUrl(){
    let year = document.getElementById('rankings-year-selector').value;
    let team = document.getElementById('rankings-team-selector').value;
    window.location.href = '/rankings/' + team + '/' + year;

}


//this function takes rankings from fillRankingsTable and puts them on the page
function pushRankingsTables(){
    let fullTable = '<tr><td>' + ptsTableBody + '</td><td>'+ astTableBody + '</td><td>'+ rebTableBody + '</td></tr><tr><td>'+ stlTableBody +'</td><td>'+ blkTableBody +'</td><td>'+ tovTableBody + '</td></tr>';

    let rankingTable = document.getElementById('rankings-table');
      if(rankingTable){
          if(validRankingsSearch === false){
               rankingTable.innerHTML = "<td><b>Select a team and year...</b></td>";
          }
          else if (validRankingsSearch === true && teamExists === false){
                rankingTable.innerHTML = "<td><b>This team didn't exist this year</b></td>";
          }
          else{
              rankingTable.innerHTML = fullTable;
          }
}

    //reinitialize global variables for the next time fillRankingsTable is called
    ptsTableBody = '';
    astTableBody = '';
    rebTableBody = '';
    stlTableBody = '';
    blkTableBody = '';
    tovTableBody = '';
    teamExists = false;
    validRankingsSearch = true;

}


//this function generates ranking lists
//it passes ranking lists to pushRankingsTables
function fillRankingsTable() {
    let yearSelector = document.getElementById('rankings-year-selector');
    let teamSelector = document.getElementById('rankings-team-selector');
    let team = teamSelector.value;
    let year = yearSelector.value;


    let selectedYear = yearSelector.getAttribute('class');
    let selectedTeam = teamSelector.getAttribute('class');

    let tableBody = '';

    //checking if there's an proper input
    //if not, we call pushRankingTables, indicating with validRankingsSearch = false
    //that we should return a message telling the user to make an input

    if ((selectedYear == '-') || (selectedTeam == '-')
              || ((selectedYear == null) && (selectedTeam == null))) {
      validRankingsSearch = false
      pushRankingsTables();
    }

    else {

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
                    //linking to player-info page
                    + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_').replace('*', '') + '">' + player['name'] + '</a></td>'
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

          //this if statement checks if every table has been filled. If they have,
          //it calls pushRankingsTables to display those tables

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
                    //linking to player-info page
                    + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_').replace('*', '') + '">' + player['name'] + '</a></td>'
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
                        //linking to player-info page
                         + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_').replace('*', '') + '">' + player['name'] + '</a></td>'
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
                            //linking to player-info page
                            + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_').replace('*', '') + '">' + player['name'] + '</a></td>'
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
                            //linking to player-info page
                            + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_').replace('*', '') + '">' + player['name'] + '</a></td>'
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
                            //linking to player-info page
                            + '<td class="team-in-player-stats"><a href="/player-info/' + player['name'].replace(' ', '_').replace('*', '') + '">' + player['name'] + '</a></td>'
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

}


// ----------------- END RANKINGS  -------------------
// ----------------- BEGIN PLAYER-INFO -------------------

//this function runs every time player-info is loaded
//it populates the datalist of players that users can search for
function loadPlayerSelector() {

    let url = getAPIBaseURL() + '/players';

    fetch(url, {method: 'get'})

    .then((response) => response.json())

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


//this function generates a player's bio paragraph and their stats table, then displays it
function fillPlayerInfoTable() {
    let playerInput = document.getElementById('player-input');
    let playerUrl = playerInput.value;

    //getting bio paragraph
    let bioUrl = getAPIBaseURL() + '/player-info/bio/' + playerUrl;
    fetch(bioUrl, {method: 'get'})
    .then((response) => response.json())


    .then(function(playerBio) {
        //formatting bio paragraph
        let paragraphBody = '';
        player = playerBio[0]

        paragraphBody += '<h2>' + player['name'] + '</h2>'
            + '<p>' + player['position'] + ', ' + player['height'] + ', ' + player['weight'] + 'lbs </p>'
            + '<p>Time in league:\n ' + player['first_year'] + '-' + player['last_year'] + '</p>'
            + '<p>Birthdate: ' + player['birth_date'] + '</p>'
            + '<p>College: ' + player['college'] + '</p>';


        // displaying bio paragraph data
        let playerBioText = document.getElementById('player-bio-text');
        if(playerBioText){
            playerBioText.innerHTML = paragraphBody;
        }


    })


    //getting stats data
    let statsUrl = getAPIBaseURL() + '/player-info/stats/' + playerUrl;
    fetch(statsUrl, {method: 'get'})
    .then((response) => response.json())

    .then(function(playerStats) {

        let tableBody = '';
        let showAdvancedStats = document.getElementById('advanced-stats-checkbox');
        let showBoxScoreStats = document.getElementById('box-score-stats-checkbox');

        //formatting stats table
        //checking that a player has stats (some never got off the bench)
        if (playerStats.length != 0){

            //adding table headers
            tableBody += '<tr>'
                            + '<th class="player-stats-table-year-cell">Year</th>'
                            //+ '<th>name</th>'
                            //+ '<th>position</th>'
                            + '<th>Age</th>'
                            + '<th>Team</th>'
                            + '<th>G</th>'
                            + '<th>GS</th>'
                            + '<th>MP</th>';

                            //if statements check which columns the user requested

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


        //adding table data
        for (let k = 0; k < playerStats.length; k++) {
            let playerSeason = playerStats[k];

            tableBody += '<tr>'
                            //at some point we can add a link to player info page
                            + '<td class="player-stats-table-year-cell">' + playerSeason['year'] + '</td>'
                            //+ '<td>' + playerSeason['name'] + '</td>'
                            //+ '<td>' + playerSeason['position'] + '</td>'
                            + '<td>' + playerSeason['age'] + '</td>'
                            //this is a link to the roster the player was on
                            + '<td class="team-in-player-stats"><a href="/rosters/' + playerSeason['team'] + '/' + playerSeason['year'] + '">' +
                            playerSeason['team'] + '</a></td>'
                            + '<td>' + playerSeason['G'] + '</td>'
                            + '<td>' + playerSeason['GS'] + '</td>'
                            + '<td>' + playerSeason['MP'] + '</td>';

                            //if statements check which columns the user requested

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

      } //end of if statement (checking if a player has stats)
      else {
        str = "No season stats exist for the requested player";
        tableBody += '<td>' + str.bold() + '</td>';
      }

        // displaying stats table
        let playerStatsTable = document.getElementById('player-stats-table');
        if(playerStatsTable){
            playerStatsTable.innerHTML = tableBody;
        }

    })
}


function updatePlayerInfoUrl(){
    let player = document.getElementById('player-input').value;
    player = player.replace(' ', '_')
    window.location.href = '/player-info/' + player;

}
