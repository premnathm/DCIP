from flask import Flask, render_template
app = Flask(__name__)


@app.route('/')
def index():
	user = {'username': 'Miguel'}
	return render_template('index.html', title='DCKAP Community Insider Program', user=user)

@app.route('/leaderboard')
def leaderboard():
	return render_template('leaderboard.html')

if __name__ == '__main__':
    app.run()