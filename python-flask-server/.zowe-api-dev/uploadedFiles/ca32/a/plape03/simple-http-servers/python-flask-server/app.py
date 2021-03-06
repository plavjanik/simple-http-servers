import logging
import os
from flask import Flask, request

app = Flask(__name__)
log = logging.getLogger('werkzeug')
log.setLevel(logging.ERROR)

@app.route('/greeting')
def hello():
    name = request.args.get('name')
    return f"Hello, {name}!"
