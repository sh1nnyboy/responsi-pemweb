from flask import Flask, render_template
from flask_mysqldb import MySQL

app = Flask(__name__)

db = MySQL(app) 

app.config["MYSQL_HOST"] = "127.0.0.1"
app.config["MYSQL_PORT"] = 3306
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "0434_db_movie"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

@app.route('/')
def main():
    return render_template("index.html")

@app.route('/list')
def movielist():
	con = db.connection
	with con.cursor() as cursor:
		query = "select * from movies"
		cursor.execute(query)
		return render_template("movielist.html", db = cursor.fetchall())

@app.route('/list/<id>')
def daftar(id):
	con = db.connection
	with con.cursor() as cursor:
		query = "select * from movies where id = %s"
		cursor.execute(query, (id,))
		return render_template("ajisaka.html", db= cursor.fetchone())

@app.errorhandler(404)
def mampus_error(e):
    return render_template("404.html")

if __name__  == '__main__':
	app.run(debug=True)