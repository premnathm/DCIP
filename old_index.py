from flask import Flask, render_template, request
from flask_mysqldb import MySQL
app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'welcome'
app.config['MYSQL_DB'] = 'sample'

mysql = MySQL(app)

@app.route('/', methods=['GET', 'POST'])
def index():
	user = {'username': 'Miguel'}
	return render_template('index.html', title='DCKAP Community Insider Program', user=user)

@app.route('/leaderboard', methods=['GET', 'POST'])
def leaderboard():
	return render_template('leaderboard.html')

@app.route('/sample', methods=['GET', 'POST'])
def sample():
    if request.method == "POST":
        details = request.form
        firstName = details['fname']
        lastName = details['lname']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO MyUsers(firstName, lastName) VALUES (%s, %s)", (firstName, lastName))
        mysql.connection.commit()
        cur.close()
        return 'success'
    return render_template('sample.html')

if __name__ == '__main__':
    app.run()
