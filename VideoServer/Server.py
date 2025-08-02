import flask, os, random, time
from flask import *
os.chdir(os.path.dirname(__file__))
app = flask.Flask(__name__)

Streams = []

class Stream:
    def __init__(self):
        self.ID = random.randrange(1000, 3999)
        self.Timestamp = time.time()


@app.route("/")
def root():
    return """This is a server hosting a way to transmit images from one game instance to another.<br>Please connect with the correct client, or cease communication."""

@app.route("/register", methods = ['POST'])
def RegisterNewStream():
    if len(Streams) > 4000:
        return "Too Many Streams."
    s = Stream()
    while any([stream.ID == s.ID for stream in Streams]):
        s = Stream()
    Streams.append(s)
    return Streams[-1].ID

@app.route("/upload", methods = ['POST'])
def UploadStill():
    if 'ID' not in request.form:
        flash('No ID')
        return "fail - no ID"
    if 'file' not in request.files:
        flash('No file part')
        return "fail - no file specified"
    file = request.files['file']
    # If the user does not select a file, the browser submits an
    # empty file without a filename.
    if file.filename == '':
        flash('No selected file')
        return "fail - no filename"        
    if file:
        Streams[int(request.form['ID'])].Timestamp = time.time()
        file.save(request.form['ID'])
        return "success"
    return "fail - bad"

@app.route("/request", methods=['POST'])
def RequestStill():
    if 'ID' not in request.form:
        flash('No ID')
        return "fail - no ID"
    if os.path.exists(request.form['ID']):
        return send_file(request.form['ID'])
    return "fail - no file"

@app.route("/list", methods=['POST'])
def ListStreams():
    ret = {}
    for stream in Streams:
        ret[stream.ID] = stream.Timestamp
    return jsonify(ret)

@app.route("/ping")
def ping():
    return time.time

@app.route("/ping_ns")
def ping_ns():
    return time.time_ns

app.run("0.0.0.0", 80)