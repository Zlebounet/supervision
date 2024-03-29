
from functools import wraps
from flask import session, redirect, url_for

# Décorateur pour vérifier si l'utilisateur possède une session valide
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'username' not in session or not session['loggedin']:
            return redirect('/login')  # Redirection vers la page de connexion
        return f(*args, **kwargs)
    return decorated_function
