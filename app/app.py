from flask import Flask
import os

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def index():
    return "Hello World, Docker!";

@app.route("/me")
def me():
    return "Flask-docker-app";

if __name__ == '__main__':
    if os.getenv("DEBUG") and os.getenv("DEBUG") == "1":
        app.run(host='0.0.0.0', debug=True)
    else:
        app.run(host='0.0.0.0')
