import logging
from flask import Flask, request

app = Flask(__name__)
log = logging.getLogger('werkzeug')
log.setLevel(logging.ERROR)

@app.route('/greeting')
def hello():
    name = request.args.get('name') or "world"
    return f"Hello, {name}!"
