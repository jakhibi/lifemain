from flask import Flask
import os

app = Flask(__name__)
startupyr = os.environ('STARTUP_YR')

@app.route('/')
def hello():
    return '<h1>Hello, Welcome to my Microservice!</h1> ' + startupyr

if __name__ == "__main__":
    app.run('0.0.0.0',80)