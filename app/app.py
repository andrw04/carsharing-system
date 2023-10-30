from flask import Flask, render_template
from app.queries import GET_USERS
from app.config import CONNECTION_STRING
import os
import psycopg2

app = Flask(__name__)


if __name__ == "__main__":
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)