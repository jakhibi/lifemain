from flask import Flask
import os

app = Flask(__name__)
startupyr = os.environ.get('STARTUP_YR')

@app.route('/')
def hello():
    return '<h1>Hello, Welcome to my Microservice, and my name is Ewere</h1>'

if __name__ == "__main__":
    app.run('0.0.0.0',80)