import os
from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    env = os.environ["env"]
    return f'Hey Gopi!, we Flask in a {env} Docker container!'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
