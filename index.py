from flask import Flask, redirect, session, url_for, render_template, request, jsonify
from flask_mysqldb import MySQL
from flask_hashing import Hashing

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'dcip'

mysql = MySQL(app)

app.secret_key = 'Rhino3dTheF@nt@stic4'

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        details = request.form
        hashing = Hashing(app)
        username = details['username']
        passwordhash = hashing.hash_value(details['password'], salt='rhino3d')
        cur = mysql.connection.cursor()
        query = "SELECT employeeid FROM dcip_employees WHERE employeeid = %s AND password = %s"
        param = (username, passwordhash)
        cur.execute(query, param)
        userdata = cur.fetchall()
        employeeid = '';
        for row in userdata: 
            employeeid = row[0]
        if(len(employeeid) > 0):   
            session['employeeid'] = employeeid 
            return redirect(url_for('leaderboard'))
    else:
        return render_template('index.html', title='DCKAP Community Insider Program')

@app.route('/', methods=['GET', 'POST'])
def index():
    if 'employeeid' in session:
        return redirect(url_for('leaderboard'))
    else:
        return redirect(url_for('login'))

@app.route('/leaderboard', methods=['GET', 'POST'])
def leaderboard():
    cur = mysql.connection.cursor()
    query = "SELECT id,name,designation,total_points FROM dcip_employees"
    cur.execute(query)
    employeesdata = cur.fetchall()
    return render_template('leaderboard.html',result=employeesdata)
        
if __name__ == '__main__':
    app.run()
