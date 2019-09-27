from flask import Flask, render_template, request, redirect, url_for, flash, get_flashed_messages, jsonify
from flask_login import LoginManager, UserMixin, login_required, login_user, logout_user, current_user
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func
from passlib.hash import oracle10
import json
import os
from werkzeug.utils import secure_filename
from flask_mail import Mail
from datetime import datetime
import pyqrcode

# with open('config.json', 'r') as c:
#     params = json.load(c)["params"]



local_server = True
app = Flask(__name__)
app.secret_key = os.urandom(24)

app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    # MAIL_USERNAME=params['gmail-user'],
    # MAIL_PASSWORD=params['gmail-password'],
    UPLOAD_FOLDER=os.path.join(os.getcwd(), "static", "profile_images/1")
)

mail = Mail(app)
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "log_in"
login_manager.login_message = u"Please log in to access this page\nइस पृष्ठ का प्रयोग करने केलिए लॉगिन करें"

# if (local_server):
#     app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
# else:
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:@localhost/interiit2019"

# app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:1234@#interiit@localhost/interiit2019"

db = SQLAlchemy(app)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False


class Players(db.Model):
    __tablename__ = 'players'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(200), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    mobile = db.Column(db.String(12), nullable=False)
    college_id = db.Column(db.Integer, nullable=False)
    selected_sports = db.Column(db.String(100), nullable=False)
    roll_no = db.Column(db.String(100), nullable=False)
    # password = db.Column(db.String(50), nullable=False)
    food = db.Column(db.String(10), nullable=False)
    blood_group = db.Column(db.String(5), nullable=False)
    profile_image_url = db.Column(db.String(200), nullable=True)
    jursey_name = db.Column(db.String(50), nullable=False)
    # arr_date = db.Column(db.datetime, nullable=False)
    # dep_date = db.Column(db.datetime, nullable=False)
    special_inst = db.Column(db.String(1000), nullable=False)
    gender = db.Column(db.String(2), nullable=False)
    reg_status = db.Column(db.Integer, nullable=False)
    game_gold = db.Column(db.Integer, nullable=False)
    game_silver = db.Column(db.Integer, nullable=False)
    game_bronze = db.Column(db.Integer, nullable=False)
    feeded = db.Column(db.Integer, nullable=False)


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


class Admins(UserMixin, db.Model):
    __tablename__ = 'admins'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)
    role = db.Column(db.String(100), nullable=False)
    privilege = db.Column(db.Integer, nullable=False)
    college_id = db.Column(db.String(10), nullable=False)
    sports_id = db.Column(db.String(10), nullable=False)


class Participation(db.Model):
    __tablename__ = 'participation'
    id = db.Column(db.Integer, primary_key=True)
    player_id = db.Column(db.Integer, nullable=False)
    sports_id = db.Column(db.Integer, nullable=False)
    college_id = db.Column(db.Integer, nullable=False)

class Staffs(db.Model):
    __tablename__ = 'staffs'
    id = db.Column(db.Integer, primary_key=True)
    player_id = db.Column(db.Integer, nullable=False)
    college_id = db.Column(db.Integer, nullable=False)


@app.route("/")
def home():
    # return render_template('index.html', params=params)
    return render_template('index.html')


@login_manager.user_loader
def load_user(user_id):
    return Admins.query.get(user_id)


@app.route("/register", methods=['GET', 'POST'])
@login_required
def register():
    if (request.method == 'POST'):
        print(request.form)
        name = request.form['name'].upper()
        email = request.form['email']
        roll_no = request.form['roll_no']
        mobile = request.form['mobile']
        jursey_name = request.form['jursey_name']
        special_inst = "Nil"
        food = request.form['food']
        gender = request.form['gender']
        blood_group = request.form['blood_group']
        college = current_user.college_id #request.form['college']
        selected_sports = request.form['selected_sports']
        # password = request.form['password']
        # hash = oracle10.hash(password, user="player")
        lastrec = Players.query.filter_by(id=db.session.query(func.max(Players.id))).all()
        print(lastrec)
        if len(lastrec) == 0:
            cnt = 1
        else:
            cnt = lastrec[-1].id + 1
        print(cnt)
        filename = str(cnt) + '.jpg'
        # if ("profile_img" not in request.files):
        #     flash('Give proper profile image')
        #     return "Fail"
        # profile_img = request.files['profile_img']
        # if profile_img.filename == '':
        #     flash('Give proper profile image')
        #     return "Fail"

        # profile_img.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        entry = Players(id=cnt, name=name, email=email, mobile=mobile, jursey_name=jursey_name,
                        selected_sports=selected_sports, special_inst=special_inst, food=food, gender=gender,
                        blood_group=blood_group, college_id=college, roll_no=roll_no, reg_status=0, game_gold=0,
                        game_silver=0, game_bronze=0, profile_image_url=filename)
        db.session.add(entry)
        if(selected_sports == "staff"):
            entry = Staffs(player_id=cnt, college_id=int(college))
            db.session.add(entry)
            try:
                db.session.commit()

                qrname = name + " - " + email + '.png'
                s = email + "^" + roll_no
                # Generate QR code
                url = pyqrcode.create(s)

                # url.svg("myqr.svg", scale=8)
                x = os.path.join(os.getcwd(), "static", "profile_images/" + current_user.college_id)
                url.png(os.path.join(x, qrname))
            except:
                return "Fail"
            print("staff")
        else:
            selected_sports = selected_sports.strip(' ').split(',')
            selected_sports = [int(x.strip(' ')) for x in selected_sports]
            # try:
            #     db.session.commit()
            # except:
            #     return "Fail"
            for p in selected_sports:
                # cntt = int(Participation.query.count()) + 1
                entry = Participation(player_id=cnt, sports_id=p, college_id=int(college))
                db.session.add(entry)

                qrname = name + " - " + email + '.png'
                s = email + "^" + roll_no
                # Generate QR code
                url = pyqrcode.create(s)

                # url.svg("myqr.svg", scale=8)
                x = os.path.join(os.getcwd(), "static", "profile_images/" + current_user.college_id)
                url.png(os.path.join(x, qrname), scale=46, module_color=[0, 0, 0, 128], background=[0xff, 0xff, 0xcc])
            try:
                db.session.commit()
            except:
                return "Fail"
        return "Success"
    sports = Sports.query.all()
    college = College.query.all()
    return render_template('register.html', allSports=sports, college=college)


@login_manager.unauthorized_handler
def unauthorized():
    flash('You must be logged in to view that page.')
    return redirect(url_for('login'))


@app.route("/showCandidates")
@login_required
def showCandidates():
    students = Players.query.filter_by(college_id=current_user.college_id).all()
    # print(students)
    games = []
    staff =[]
    for stud in students:
        gmlst = []

        if(stud.selected_sports == "staff"):
            staff.append(stud)
            continue
        for no in (stud.selected_sports).split(','):
            sp = Sports.query.filter_by(id=int(no)).first()
            gmlst.append(sp.sports_name + '(' + sp.category + ') ')
        games.append('\n'.join(gmlst))
    param = [(stud, gm) for stud, gm in zip(students, games)]
    # print(param)
    # print(staff)
    return render_template('showCandidates.html', params=param, staffs= staff)


@app.route("/login", methods=['GET', 'POST'])
def login():
    if (request.method == 'POST'):
        email = request.form['username']
        password = request.form['password']
        # hash = oracle10.hash(password, user="player")
        user = Admins.query.filter_by(username=email).first()
        if user is None:
            return "Fail"
        elif (user.password != password):
            return "Fail"
        else:
            # clg = College.query.filter_by(id=user.college_id).first()
            # print(clg)
            # print(clg.clg_name)
            # # user.clg_name = clg.clg_name
            login_user(user, remember=True)
            return "Success"
    else:
        return render_template('login.html')

@app.route("/qrscanner", methods=['GET', 'POST'])
def qrscanner():
    if (request.method == 'POST'):
        qrcont = request.form['content']
        email,roll = qrcont.split("^")
        user = Players.query.filter_by(email=email).first()
        print(email)
        print(roll)
        if(user.feeded == 0):
            user.feeded = 1
            db.session.commit()
            return "Success"
        else:
            return "Fail"
    else:
    	return render_template('qrscanner.html')


@app.route("/scorecard", methods=['GET', 'POST'])
def scorecard():
    if request.method == 'POST':
        sports_id = request.form['sport_id']
        if (sports_id == '0'):
            points = Point_master.query.all()
            points_master = []
            for point in points:
                points_dict = {"clg_id": point.clg_id, "point": point.points}
                points_master.append(points_dict)
            return json.dumps(points_master)
        else:
            sport_points = Point_main.query.filter(Point_main.sports_id == int(sports_id)).all()
            for sport_point in sport_points:
                point_dict = {"c_1": sport_point.c_1, "c_2": sport_point.c_2, "c_3": sport_point.c_3,
                              "c_4": sport_point.c_4, "c_5": sport_point.c_5, "c_6": sport_point.c_6,
                              "c_7": sport_point.c_7, "c_8": sport_point.c_8, "c_9": sport_point.c_9,
                              "c_10": sport_point.c_10, "c_11": sport_point.c_11, "c_12": sport_point.c_12,
                              "c_13": sport_point.c_13, "c_14": sport_point.c_14, "c_15": sport_point.c_15,
                              "c_16": sport_point.c_16, "c_17": sport_point.c_17, "c_18": sport_point.c_18,
                              "c_19": sport_point.c_19, "c_20": sport_point.c_20, "c_21": sport_point.c_21,
                              "c_22": sport_point.c_22, "c_23": sport_point.c_23}
            return json.dumps(point_dict)
    else:
        sports = Sports.query.all()
        sports_list = []
        for sport in sports:
            sports_dict = {"id": sport.id, "sport_name": sport.sports_name, "category": sport.category}
            sports_list.append(sports_dict)
        colleges = College.query.all()
        college_list = []
        for college in colleges:
            college_dict = {"id": college.id, "college_name": college.clg_name,
                            "college_nickname": college.clg_nickname, "college_logo": college.logo_url}
            college_list.append(college_dict)
        # return render_template('scorecard.html', params=params, sports_list=sports_list, college_list=college_list)
        return render_template('scorecard.html', sports_list=sports_list, college_list=college_list)


@app.route("/schedule")
def schedule():
    # return render_template('schedule.html', params=params)
    return render_template('schedule.html')


@app.route("/deletePlayer", methods=['GET', 'POST'])
@login_required
def deletePlayer():
    if (request.method == 'POST'):
        id = int(request.data)
        print(id)
        try:
            db.session.delete(Players.query.filter_by(id=id).first())
            for p in Participation.query.filter_by(player_id=id).all():
                db.session.delete(p)
            for j in Staffs.query.filter_by(player_id=id).all():
                db.session.delete(j)
            db.session.commit()
        except Exception:
            return "Fail"
    return "Success"


@app.route("/logout")
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))


@app.route("/gallery")
def gallery():
    # return render_template('gallery.html', params=params)
    return render_template('gallery.html')


@app.route("/info")
def info():
    # return render_template('info.html', params=params)
    return render_template('info.html')


@app.route("/live")
def live():
    # return render_template('live.html', params=params)
    return render_template('live.html')


def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/see')
def see():
    stds = Players.query.all()
    print(stds[0].name)
    return stds[0].name


@app.route('/getLiveMatches_Ajax', methods=['GET', 'POST'])
def getLiveMatches_Ajax():
    # live_ids = request.form('live_id')
    # print(live_ids)
    time_now = datetime.now()

    live_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).all()
    list_live = []
    for match in live_matches:
        dict1 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "id": match.id}
        list_live.append(dict1)
    live = {"live": list_live}

    # return render_template('livescore.html', params=params, live=live, prev = prev)
    print(type(list_live))
    print(type(live))

    # return jsonify(json.dumps(live))
    return json.dumps(live)
    # return list_live


@app.route('/getLiveMatches', methods=['GET', 'POST'])
def getLiveMatches():
    time_now = datetime.now()

    prev_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id != 0).all()
    list_prev = []
    for match in prev_matches:
        dict0 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "clg_id1": match.clg_id1,
                 "clg_id2": match.clg_id2, "sports_id": match.sports_id, "venue": match.venue, "level": match.level,
                 "id": match.id, "winner_clg_id": match.winner_clg_id, "status": match.status}
        list_prev.append(dict0)
    prev = {"prev": list_prev}
    # print(prev)

    live_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).all()
    list_live = []
    for match in live_matches:
        dict1 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "clg_id1": match.clg_id1,
                 "clg_id2": match.clg_id2, "sports_id": match.sports_id, "venue": match.venue, "level": match.level,
                 "id": match.id, "date_time": match.date_time}
        list_live.append(dict1)
    live = {"live": list_live}
    # print(live)

    # return render_template('livescore.html', params=params, live=list_live, prev=prev)
    return render_template('livescore.html', live=list_live, prev=prev)
    # return json.dumps(dict)


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




# application = app

# if __name__ == '__main__':
#     app.run(host='0.0.0.0', port=5000, debug=True)

app.run(debug=True)
