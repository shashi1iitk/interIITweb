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
    UPLOAD_FOLDER=os.getcwd() + "/static/profile_images"
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

class Sports(db.Model):
    __tablename__ = 'sports'
    id = db.Column(db.Integer, primary_key=True)
    sports_name = db.Column(db.String(200), nullable=False)
    category = db.Column(db.String(1), nullable=False)
    max_player = db.Column(db.Integer, nullable=False)
    type = db.Column(db.String(20), nullable=False)

class College(db.Model):
    __tablename__ = 'college'
    id = db.Column(db.Integer, primary_key=True)
    clg_name = db.Column(db.String(400), nullable=False)
    clg_nickname = db.Column(db.String(200), nullable=False)
    logo_url = db.Column(db.String(600), nullable=False)

class Point_master(db.Model):
    __tablename__ = 'point_master'
    id = db.Column(db.Integer, primary_key=True)
    clg_id = db.Column(db.Integer(), nullable=False)
    points = db.Column(db.Integer(), nullable=False)

class Point_main(db.Model):
    __tablename__ = 'point_main'
    id = db.Column(db.Integer, primary_key=True)
    sports_id = db.Column(db.Integer(), nullable=False)
    c_1 = db.Column(db.Integer(), nullable=False)
    c_2 = db.Column(db.Integer(), nullable=False)
    c_3 = db.Column(db.Integer(), nullable=False)
    c_4 = db.Column(db.Integer(), nullable=False)
    c_5 = db.Column(db.Integer(), nullable=False)
    c_6 = db.Column(db.Integer(), nullable=False)
    c_7 = db.Column(db.Integer(), nullable=False)
    c_8 = db.Column(db.Integer(), nullable=False)
    c_9 = db.Column(db.Integer(), nullable=False)
    c_10 = db.Column(db.Integer(), nullable=False)
    c_11 = db.Column(db.Integer(), nullable=False)
    c_12 = db.Column(db.Integer(), nullable=False)
    c_13 = db.Column(db.Integer(), nullable=False)
    c_14 = db.Column(db.Integer(), nullable=False)
    c_15 = db.Column(db.Integer(), nullable=False)
    c_16 = db.Column(db.Integer(), nullable=False)
    c_17 = db.Column(db.Integer(), nullable=False)
    c_18 = db.Column(db.Integer(), nullable=False)
    c_19 = db.Column(db.Integer(), nullable=False)
    c_20 = db.Column(db.Integer(), nullable=False)
    c_21 = db.Column(db.Integer(), nullable=False)
    c_22 = db.Column(db.Integer(), nullable=False)
    c_23 = db.Column(db.Integer(), nullable=False)


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
            profile_img = request.files['profile_img']
            flash('Give proper profile image')
            return redirect(url_for('register'))
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


@app.route("/login", methods=['GET', 'POST'])
def login():
    #return "Blank"

    if (request.method == 'POST'):
        print('Hello')
        email = request.form['email']
        password = request.form['password']
        hash = oracle10.hash(password, user="player")
        return hash
    else:
        return render_template('login.html', params=params)


@app.route("/scorecard", methods=['GET', 'POST'])
def scorecard():
    if request.method == 'POST':
        sports_id = request.form['sport_id']
        if (sports_id=='0'):
            points = Point_master.query.all()
            points_master = []
            for point in points:
                points_dict = {"clg_id": point.clg_id, "point": point.points}
                points_master.append(points_dict)
            print(points_master)
            return json.dumps(points_master)
        else:
            print(type(int(sports_id)))
            sport_points = Point_main.query.filter(Point_main.sports_id == int(sports_id)).all()
            for sport_point in sport_points:
                point_dict = {"c_1": sport_point.c_1, "c_2": sport_point.c_2,  "c_3": sport_point.c_3, "c_4": sport_point.c_4, "c_5": sport_point.c_5, "c_6": sport_point.c_6, "c_7": sport_point.c_7, "c_8": sport_point.c_8, "c_9": sport_point.c_9, "c_10": sport_point.c_10, "c_11": sport_point.c_11, "c_12": sport_point.c_12, "c_13": sport_point.c_13, "c_14": sport_point.c_14, "c_15": sport_point.c_15, "c_16": sport_point.c_16, "c_17": sport_point.c_17, "c_18": sport_point.c_18, "c_19": sport_point.c_19, "c_20": sport_point.c_20, "c_21": sport_point.c_21, "c_22": sport_point.c_22, "c_23": sport_point.c_23}
            print(point_dict)
            return json.dumps(point_dict)
    else:
        sports = Sports.query.all()
        sports_list= []
        for sport in sports:
            sports_dict = {"id": sport.id, "sport_name": sport.sports_name, "category": sport.category}
            sports_list.append(sports_dict)
        print(sports_list)
        colleges = College.query.all()
        college_list = []
        for college in colleges:
            college_dict = {"id": college.id, "college_name": college.clg_name, "college_nickname": college.clg_nickname, "college_logo": college.logo_url}
            college_list.append(college_dict)
        print(college_list)
        return render_template('scorecard.html', params=params, sports_list = sports_list, college_list = college_list)


@app.route("/test", methods=['GET', 'POST'])
def test():
    if (request.method == 'POST'):
        print('Hello')
        #email = request.form.get("email")
        #print(email)
        cnt = Players.query.count() + 1
        profile_img = request.files['profile_img']
        if ("profile_img" not in request.files):
            profile_img = request.files['profile_img']
            flash('Give proper profile image')
            return redirect(url_for('test'))
        if profile_img.filename == '':
            flash('Give proper profile image')
            return redirect(url_for('test'))
        if profile_img and allowed_file(profile_img.filename):
            filename = secure_filename(str(cnt) + "." + profile_img.filename.rsplit('.', 1)[1].lower())
            profile_img.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))

            entry = Players(id=cnt, profile_image_url=filename)
            db.session.add(entry)
            db.session.commit()

            play = Players.query.filter(Players.id == cnt).first()
            play.name = 1

            #return "Image successful"
        else:
            flash('Give proper profile image')
            return redirect(url_for('test'))

        return "all well"
    else:
        return render_template('test.html', params=params)


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
    print(stds[1].name)
    return stds[1].name

@app.route('/getLiveMatches_Ajax', methods=['GET','POST'])
def getLiveMatches_Ajax():
    #live_ids = request.form('live_id')
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
