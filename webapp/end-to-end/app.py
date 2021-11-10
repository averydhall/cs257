'''
    app.py
    Jeff Ondich, 25 April 2016
    Updated 8 November 2021

    A small Flask application that provides a barelywebsite with an accompanying
    API (which is also tiny) to support that website.
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
def rosters():
    return flask.render_template('rosters.html')

@app.route('/player_info/') 
def player_info():
    return flask.render_template('player_info.html')

@app.route('/rankings/') 
def rankings():
    return flask.render_template('rankings.html')


if __name__ == '__main__':
    parser = argparse.ArgumentParser('A books-and-authors application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
