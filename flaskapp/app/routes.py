#imports
import search, subprocess
from subprocess import call
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
    subprocess.call("sqlite3 /tmp/flaskr.db < schema.sql", shell=True)
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
    language = search.get_language( searchvalue )
    command = search.get_command( searchvalue )
    cur=''
    if language and command:
        cur = db.execute("select * from sites where key_language = '{0}' AND key_command = '{1}'".format(language,command))
    elif language:
        cur = db.execute("select * from sites where key_language = '{0}' AND key_command = ''".format(language))
    elif command:
        cur = db.execute("select * from sites where key_command = '{0}' AND key_language = ''".format(command))
    else:
        cur = db.execute("select * from sites where key_command = 'None' AND key_language = 'None'")
    entries = cur.fetchall()
    return render_template('content.html', entries = entries)

@app.route('/about')
def about():
    return render_template('about.html')

if __name__ == '__main__':
    app.run(debug=True)

