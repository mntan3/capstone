#imports
import search
from sqlite3 import dbapi2 as sqlite3
from flask import Flask, render_template, session, g, redirect, url_for, \
        abort, flash, request
from contextlib import closing


app = Flask(__name__)

app.secret_key = '*Dkw9I&).>s'


# configuration
app.config.update(dict(
    DATABASE = '/tmp/flaskr.db',
    DEBUG = True,
    SECRET_KEY = 'development key',
    USERNAME = 'admin',
    PASSWORD = 'default'
))
app.config.from_envvar('FLASKR_SETTINGS', silent=True)


def connect_db():
    """Connect to database"""
    rv = sqlite3.connect(app.config['DATABASE'])
    rv.row_factory = sqlite3.Row
    return rv

def init_db():
    """Initialize database"""
    db = get_db()
    with app.open_resource('schema.sql', mode='r') as f:
        db.cursor().executescript(f.read())
    db.commit()

#@app.cli.command('initdb')
#def initdb_command():
#    """Make database tables"""
#    init_db()
#    print('Initialized the database')

def get_db():
    """Opens database connection if there isn't one"""
    if not hasattr(g, 'sqlite_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db

@app.teardown_appcontext
def close_db(error):
    """Closes the database after request"""
    if hasattr(g, 'sqlite_db'):
        g.sqlite_db.close()

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/content',  methods=['GET', 'POST'])
def content():
    searchvalue = request.form.get('value')
    db = get_db()
    cur = db.execute('select title from sites order by id desc')
    #entries = cur.fetchall()
    return render_template('content.html', searchvalue=searchvalue)

@app.route('/about')
def about():
    return render_template('about.html')

if __name__ == '__main__':
    app.run(debug=True)

