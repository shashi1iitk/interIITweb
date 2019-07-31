from flask import Flask, render_template, request, redirect, url_for, flash, get_flashed_messages, jsonify
from flask_sqlalchemy import SQLAlchemy
from passlib.hash import oracle10
import json
import os
from werkzeug.utils import secure_filename
from flask_mail import Mail
from datetime import datetime

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)
app.secret_key = os.urandom(24)
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['gmail-user'],
    MAIL_PASSWORD=params['gmail-password'],
    UPLOAD_FOLDER=os.getcwd() + "/profile_images"
)
mail = Mail(app)
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}

if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False


class Players(db.Model):
    __tablename__ = 'players'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(200), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    mobile = db.Column(db.String(12), nullable=False)
    college_id = db.Column(db.Integer, nullable=False)
    password = db.Column(db.String(50), nullable=False)
    food = db.Column(db.String(10), nullable=False)
    blood_group = db.Column(db.String(5), nullable=False)
    profile_image_url = db.Column(db.String(200), nullable=False)
    jursey_name = db.Column(db.String(50), nullable=False)
    biggest_motivator = db.Column(db.String(400), nullable=False)
    fav_athelete = db.Column(db.String(100), nullable=False)
    fitness_mantra = db.Column(db.String(400), nullable=False)
    gender = db.Column(db.String(2), nullable=False)
    reg_status = db.Column(db.Integer, nullable=False)
    game_gold = db.Column(db.Integer, nullable=False)
    game_silver = db.Column(db.Integer, nullable=False)
    game_bronze = db.Column(db.Integer, nullable=False)


class Match(db.Model):
    __tablename__ = 'schedule_result_team'
    id = db.Column(db.Integer, primary_key=True)
    sports_id = db.Column(db.Integer, nullable=False)
    clg_id1 = db.Column(db.Integer, nullable=False)
    clg_id2 = db.Column(db.Integer, nullable=False)
    date_time = db.Column(db.DateTime(), nullable=False)
    venue = db.Column(db.String(400), nullable=False)
    level = db.Column(db.String(400), nullable=False)
    score1 = db.Column(db.String(100), nullable=False)
    score2 = db.Column(db.String(100), nullable=False)
    winner_clg_id = db.Column(db.Integer, nullable=False)
    runner_clg_id = db.Column(db.Integer, nullable=False)
    status = db.Column(db.String(2000), nullable=False)
    commentry = db.Column(db.String(10000), nullable=False)
    lineup1 = db.Column(db.String(1000), nullable=False)


@app.route("/")
def home():
    return render_template('index.html', params=params)

@app.route("/register", methods=['GET', 'POST'])
def register():
    if (request.method == 'POST'):

        name = request.form['name']
        email = request.form['email']
        mobile = request.form['mobile']
        jursey_name = request.form['jursey_name']
        fav_athelete = request.form['fav_athelete']
        biggest_motivator = request.form['biggest_motivator']
        fitness_mantra = request.form['fitness_mantra']


        food = request.form['food']
        gender = request.form['gender']
        blood_group = request.form['blood_group']

        college = request.form['college']
        password = request.form['password']
        selected_sports = request.form['selected_sports']

        hash = oracle10.hash(password, user="player")
        cnt = int(Players.query.count()) + 1
        print(cnt)
        #return selected_sports
        filename = str(cnt)+'.jpg'
        #return str(filename)

        entry = Players( id=cnt, name=name, email=email, mobile=mobile, jursey_name=jursey_name, fav_athelete=fav_athelete,
                        biggest_motivator=biggest_motivator, fitness_mantra=fitness_mantra, food=food, gender=gender,
                        blood_group=blood_group, college_id=college, password=hash, reg_status=0, game_gold=0,
                        game_silver=0, game_bronze=0, profile_image_url=filename)
        db.session.add(entry)
        db.session.commit()
        return "Registration successful"
    return render_template('register.html', params=params)


@app.route("/register0", methods=['GET', 'POST'])
def register0():
    if (request.method == 'POST'):
        '''Add entry to the database'''
        cnt = Players.query.count() + 1
        name = request.form.get('name')
        email = request.form.get('email')
        email_tab = Players.query.filter(Players.email == email).count()
        if (email_tab > 0):
            flash('Email already present')
            return redirect(url_for('register'))
        mobile = request.form.get('mobile')
        jursey_name = request.form.get('jursey_name')
        fav_athelete = request.form.get('fav_athelete')
        biggest_motivator = request.form.get('biggest_motivator')
        fitness_mantra = request.form.get('fitness_mantra')
        food = request.form.get('food')
        gender = request.form.get('gender')
        blood_group = request.form.get('blood_group')
        college = int(request.form.get('college'))
        password = request.form.get('password')
        hash = oracle10.hash(password, user="player")
        if ("profile_img" not in request.files):
            flash('Give proper profile image')
            return redirect(url_for('register'))
        profile_img = request.files['profile_img']
        if profile_img.filename == '':
            flash('Give proper profile image')
            return redirect(url_for('register'))
        if profile_img and allowed_file(profile_img.filename):
            filename = secure_filename(str(cnt) + "." + profile_img.filename.rsplit('.', 1)[1].lower())
            profile_img.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        else:
            flash('Give proper profile image')
            return redirect(url_for('register'))
        entry = Players(name=name, email=email, mobile=mobile, jursey_name=jursey_name, fav_athelete=fav_athelete,
                        biggest_motivator=biggest_motivator, fitness_mantra=fitness_mantra, food=food, gender=gender,
                        blood_group=blood_group, college_id=college, password=hash, reg_status=0, game_gold=0,
                        game_silver=0, profile_image_url=filename, id=cnt, game_bronze=0)
        db.session.add(entry)
        db.session.commit()
        return "Registration successful"
    # mail.send_message('New message from ' + name,
    #                   sender=email,
    #                   recipients = [params['gmail-user']],
    #                   body = sport + "\n" + mobile
    #                   )
    return render_template('register.html', params=params)


@app.route("/login")
def login():
    #return "Blank"
    return render_template('login.html', params=params)


@app.route("/scorecard")
def scorecard():
    return render_template('scorecard.html', params=params)


@app.route("/livescore")
def livescore():
    #return "Blank"
    return render_template('table.html', params=params)


@app.route("/schedule")
def schedule():
    return render_template('schedule.html', params=params)


@app.route("/gallery")
def gallery():
    return render_template('gallery.html', params=params)


@app.route("/info")
def info():
    return render_template('info.html', params=params)


def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS



@app.route('/see')
def see():
    stds = Players.query.all()
    print(stds[0].name)
    return "Blank"

@app.route('/getLiveMatches_Ajax', methods=['GET','POST'])
def getLiveMatches_Ajax():
    #live_ids = request.form('live_id')
    # data = request.json
    #ids of live matches
    #enter query to get ids of current live matches
    #if(compare live_ids with ids of current live matches)
    #if there is a mismatch send ''mismatch'

    #else
    #print(live_ids)
    time_now = datetime.now()

    live_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).all()
    list_live = []
    for match in live_matches:
        dict1 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "id": match.id}
        list_live.append(dict1)
    live = {"live": list_live}


    #return render_template('livescore.html', params=params, live=live, prev = prev)
    print (type(list_live))
    print(type(live))


    #return jsonify(json.dumps(live))
    return json.dumps(live)
    #return list_live


@app.route('/getLiveMatches', methods=['GET', 'POST'])
def getLiveMatches():
    time_now = datetime.now()

    prev_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id != 0).all()
    list_prev = []
    for match in prev_matches:
        dict0 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "clg_id1": match.clg_id1,
                "clg_id2": match.clg_id2, "sports_id": match.sports_id, "venue": match.venue, "level": match.level,
                "id": match.id, "winner_clg_id" :  match.winner_clg_id, "status" : match.status}
        list_prev.append(dict0)
    prev = {"prev": list_prev}
    #print(prev)

    live_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).all()
    list_live = []
    for match in live_matches:
        dict1 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "clg_id1": match.clg_id1,
                "clg_id2": match.clg_id2, "sports_id": match.sports_id, "venue": match.venue, "level": match.level,
                "id": match.id, "date_time": match.date_time}
        list_live.append(dict1)
    live = {"live": list_live}
    #print(live)

    return render_template('livescore.html', params=params, live=list_live, prev = prev)
    #return json.dumps(dict)


@app.route('/setMatchDetails/<id>', methods=['GET', 'POST'])
def setMatchDetails(id):
    if (request.method == 'POST'):
        match = Match.query.filter(Match.id == id).first()
        match.winner_clg_id = int(request.form.get('winner_clg_id'))
        cldisd = [match.clg_id2, match.clg_id1]
        cldisd.remove(int(request.form.get('winner_clg_id')))
        match.runner_clg_id = int(cldisd[0])
        match.status = request.form.get('status')
    return "set"


app.run(debug=True)
