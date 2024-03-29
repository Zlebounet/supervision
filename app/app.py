from flask_mail import Mail
from datetime import timedelta
from flask import Flask, session
from controller.add_controller import add_get, add_post
from controller.stats_controller import stats_main
from controller.update_controller import update_get, update_post
from controller.map_controller import map_get, map_post
from controller.table_controller import table_get
from controller.index_controller import get_index
from controller.login_controller import login_get
from controller.login_controller import login_post
from controller.add_user_controller import add_user_get
from controller.add_user_controller import add_user_post
from controller.pull_controller import pull_get
from controller.pull_controller import launch
from controller.history_controller import history_get
from controller.history_controller import history_post
from controller.logout import logout
import threading
import time

app = Flask(__name__)

# app.config['MAIL_SERVER'] = 'smtp'
# app.config['MAIL_PORT'] = 25  # ou tout autre port SMTP approprié
# app.config['SENDER_EMAIL'] = 'noreply@supervision.com'
# app.config['MAIL_USE_TLS'] = False  # Si votre serveur SMTP local n'utilise pas TLS
# app.config['MAIL_USERNAME'] = None  # Si le serveur SMTP local n'exige pas d'authentification
# app.config['MAIL_PASSWORD'] = None

app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(minutes=10)
app.secret_key = 'eVA72radZbVieDzN42WPAg56eL887TN64T55qtSxf9k57cn7HC'

app.route('/table', methods=['GET'])(table_get)


app.route('/add', methods=['GET'])(add_get)
app.route('/add', methods=['POST'])(add_post)

app.route('/stats', methods=['GET'])(stats_main)

app.route('/update', methods=['GET'])(update_get)
app.route('/update', methods=['POST'])(update_post)

app.route('/map', methods=['GET'])(map_get)
app.route('/map', methods=['POST'])(map_post)

app.route('/login', methods=['GET'])(login_get)
app.route('/login', methods=['POST'])(login_post)


app.route('/logout', methods=['GET'])(logout)

app.route('/', methods=['GET'])(get_index)

app.route('/add_user', methods=['GET'])(add_user_get)
app.route('/add_user', methods=['POST'])(add_user_post)

app.route('/pull', methods=['GET'])(pull_get)

app.route('/history', methods=['GET'])(history_get)
app.route('/history', methods=['POST'])(history_post)



def schedule_launch() :
    while True :
        launch()
        time.sleep(300)

thread = threading.Thread(target=schedule_launch)
thread.start()

if __name__ == "__main__":
    app.run(host='0.0.0.0')


