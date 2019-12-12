import os
#import magic
import urllib.request
# from app import app
from flask import Flask, flash, request, redirect, render_template
from werkzeug.utils import secure_filename


from flask import Flask

UPLOAD_FOLDER = os.path.join(os.getcwd(), "static", "images")

app = Flask(__name__)
app.secret_key = "secret key"
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024



ALLOWED_EXTENSIONS = set(['txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'])

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS
    
@app.route('/')
def upload_form():
    return render_template('upload.html')

@app.route('/', methods=['POST'])
def upload_file():
    if request.method == 'POST':
        # check if the post request has the files part
        if 'files[]' not in request.files:
            flash('No file part')
            return redirect(request.url)
        files = request.files.getlist('files[]')
        for file in files:
            if file and allowed_file(file.filename):
                # filename = secure_filename(file.filename)
                filerename = "tony.jpg"
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], filerename))
        flash('File(s) successfully uploaded')
        return redirect('/')

if __name__ == "__main__":
    app.run()