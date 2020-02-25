import os
from flask import Flask, request

app = Flask(__name__)

@app.route('/greeting')
def hello():
    name = request.args.get('name')
    return f"Hello, {name}!"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=os.getenv("PORT", 8080))