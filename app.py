from flask import Flask,jsonify,request
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello from app7'

if __name__ == "__main__":
     app.run()
