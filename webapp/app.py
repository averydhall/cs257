'''
    app.py
    Anders Shenholm and Avery Hall
    10, November 2021

    Flask App for Hoopdata web app
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/')
def home():
    return flask.render_template('index.html')

@app.route('/rosters/')
def rostersNoSelections():
    return flask.render_template('rosters.html')
    
@app.route('/rosters/<team_name>/<year>/')
def rosters(team_name, year):
    return flask.render_template('rosters.html', teamName = team_name, year = year)


@app.route('/rankings/')
def rankingsNoSelections():
    return flask.render_template('rankings.html')

@app.route('/rankings/<team_name>/<year>/')
def rankings(team_name, year):
    return flask.render_template('rankings.html', teamName = team_name, year = year)

    

@app.route('/player-info/')
def player_info():
    return flask.render_template('player-info.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('An NBA player statistics application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
