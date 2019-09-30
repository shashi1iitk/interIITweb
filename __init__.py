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
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:@localhost/interiit2019_2"

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


class Match_Individual(db.Model):
    __tablename__ = 'schedule_result_individual'
    id = db.Column(db.Integer, primary_key=True)
    sport_id = db.Column(db.Integer, nullable=False)
    clgs_playing = db.Column(db.String(400), nullable=False)
    players = db.Column(db.String(1000), nullable=False)
    date_time = db.Column(db.String(1000), nullable=False)
    venue = db.Column(db.String(400), nullable=False)
    level = db.Column(db.String(400), nullable=False)
    clg_1st = db.Column(db.Integer)
    clg_2nd = db.Column(db.Integer)
    clg_3rd = db.Column(db.Integer)
    clg_4th = db.Column(db.Integer)
    clg_1st_player_id = db.Column(db.Integer)
    clg_2nd_player_id = db.Column(db.Integer)
    clg_3rd_player_id = db.Column(db.Integer)
    clg_4th_player_id = db.Column(db.Integer)
    status = db.Column(db.String(1000))
    comments = db.Column(db.String(1000))


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
        college = current_user.college_id  # request.form['college']
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
                        game_silver=0, game_bronze=0, profile_image_url=filename, feeded=0)
        db.session.add(entry)
        if (selected_sports == "staff"):
            entry = Staffs(player_id=cnt, college_id=int(college))
            db.session.add(entry)
            try:
                db.session.commit()

                qrname = name + " - " + email + '.svg'
                s = email + "^" + roll_no
                # Generate QR code
                url = pyqrcode.create(s)

                # url.svg("myqr.svg", scale=8)
                x = os.path.join(os.getcwd(), "static", "profile_images/" + current_user.college_id)
                url.svg(os.path.join(x, qrname), scale=8)
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

                qrname = name + " - " + email + '.svg'
                s = email + "^" + roll_no
                # Generate QR code
                url = pyqrcode.create(s)

                # url.svg("myqr.svg", scale=8)
                x = os.path.join(os.getcwd(), "static", "profile_images/" + current_user.college_id)
                url.svg(os.path.join(x, qrname), scale=8)
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
    staff = []
    for stud in students:
        gmlst = []

        if (stud.selected_sports == "staff"):
            staff.append(stud)
            continue
        for no in (stud.selected_sports).split(','):
            sp = Sports.query.filter_by(id=int(no)).first()
            gmlst.append(sp.sports_name + '(' + sp.category + ') ')
        games.append('\n'.join(gmlst))
    param = [(stud, gm) for stud, gm in zip(students, games)]
    # print(param)
    # print(staff)
    return render_template('showCandidates.html', params=param, staffs=staff)


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


@app.route("/loginSuccess")
@login_required
def loginSuccess():
    return render_template('loginSuccess.html')


@app.route("/qrscanner", methods=['GET', 'POST'])
@login_required
def qrscanner():
    if (request.method == 'POST'):
        qrcont = request.form['content']
        email, roll = qrcont.split("^")
        user = Players.query.filter_by(email=email).first()
        if (user is None):
            return "Fail"
        elif (user.feeded == 0):
            user.feeded = 1
            db.session.commit()
            return "Success"
        else:
            return "Fail"
    else:
        return render_template('qrscanner.html')


@app.route("/qrstats", methods=['GET', 'POST'])
@login_required
def qrstats():
    if (request.method == 'POST'):
        print("Ok")
        al = Players.query.update({Players.feeded: 0})
        db.session.commit()
        return redirect(url_for("qrstats"))
    else:
        permitted = Players.query.filter(Players.feeded == 1).count()
        total = Players.query.count()
        print(permitted)
        print(total)
        stat = {"permitted": permitted, "total": total}
        return render_template('qrstats.html', stats=stat)


@app.route("/scorecard", methods=['GET', 'POST'])
def scorecard():
    if request.method == 'POST':
        sports_id = request.form['sport_id']
        if (sports_id == '0'):
            points = Point_master.query.order_by(Point_master.points.desc()).all()
            pts = []
            for val in points:
                clg = College.query.filter(College.id == val.clg_id).first()
                name = clg.clg_name
                logo = clg.logo_url
                pts.append({"name": name, "point": val.points, "clg_id": val.clg_id, "logo": logo})
            pts.sort(key=lambda x: x["point"], reverse=True)
            return json.dumps({"data": pts, "name": "Master Ranking"})
        else:
            sport_point = Point_main.query.filter(Point_main.sports_id == int(sports_id)).first()
            sport_name = Sports.query.filter(Sports.id == int(sports_id)).first().sports_name
            category = Sports.query.filter(Sports.id == int(sports_id)).first().category
            pts = []
            for i in range(1, 24):
                clg = College.query.filter(College.id == i).first()
                name = clg.clg_name
                logo = clg.logo_url
                pts.append({"name": name, "point": sport_point.__dict__["c_" + str(i)], "clg_id": i, "logo": logo})
            pts.sort(key=lambda x: x["point"], reverse=True)
            return json.dumps({"data": pts, "name": sport_name + ' - ' + category})
    else:
        sports = Sports.query.all()
        sports_list = [{"id": 0, "sport_name": "Master Points Table", "category": "N"}]
        for sport in sports:
            sports_dict = {"id": sport.id, "sport_name": sport.sports_name + " - " + sport.category,
                           "category": sport.category}
            sports_list.append(sports_dict)
        college_list = College.query.all()
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
    print(stds[-1].name)
    return stds[-1].name


@app.route('/getLiveMatches_Ajax', methods=['GET', 'POST'])
def getLiveMatches_Ajax():
    time_now = datetime.now()

    live_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).all()
    list_live = []
    for match in live_matches:
        dict1 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "id": match.id}
        list_live.append(dict1)
    live = {"live": list_live}
    return json.dumps(live)


@app.route('/getLiveMatches', methods=['GET', 'POST'])
def getLiveMatches():
    time_now = datetime.now()

    prev_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id != 0).order_by(
        Match.date_time.desc()).all()
    list_prev = []
    for match in prev_matches:
        winner_college = College.query.filter(College.id == match.winner_clg_id).first().clg_name
        clg1 = College.query.filter(College.id == match.clg_id1).first().clg_name
        clg2 = College.query.filter(College.id == match.clg_id2).first().clg_name
        logo1 = College.query.filter(College.id == match.clg_id1).first().logo_url
        logo2 = College.query.filter(College.id == match.clg_id2).first().logo_url
        sport = Sports.query.filter(Sports.id == match.sports_id).first().sports_name
        category = Sports.query.filter(Sports.id == match.sports_id).first().category
        sport = sport + " - " + category
        dict0 = {"score1": match.score1, "score2": match.score2, "winner": winner_college, "clg1": clg1, "clg2": clg2,
                 "sport": sport, "level": match.level, "logo1": logo1, "logo2": logo2, "status": match.status}
        list_prev.append(dict0)

    prev_matches_individual = Match_Individual.query.filter(Match_Individual.date_time < time_now).filter(
        Match_Individual.clg_1st_player_id != 0).order_by(
        Match_Individual.date_time.desc()).all()
    list_prev_individual = []
    for match in prev_matches_individual:
        sport = Sports.query.filter(Sports.id == match.sport_id).first().sports_name
        category = Sports.query.filter(Sports.id == match.sport_id).first().category
        sport = sport + " - " + category
        player1 = Players.query.filter(Players.id == match.clg_1st_player_id).first()
        player1 = {"name": player1.name,
                   "college": College.query.filter(College.id == player1.college_id).first().clg_name}
        player2 = Players.query.filter(Players.id == match.clg_2nd_player_id).first()
        player2 = {"name": player2.name,
                   "college": College.query.filter(College.id == player2.college_id).first().clg_name}
        player3 = Players.query.filter(Players.id == match.clg_3rd_player_id).first()
        player3 = {"name": player3.name,
                   "college": College.query.filter(College.id == player3.college_id).first().clg_name}
        player4 = Players.query.filter(Players.id == match.clg_4th_player_id).first()
        player4 = {"name": player4.name,
                   "college": College.query.filter(College.id == player4.college_id).first().clg_name}
        dict0 = {"player1": player1, "player2": player2, "player3": player3, "player4": player4, "sport": sport,
                 "level": match.level, "status":match.status}
        list_prev_individual.append(dict0)

    live_match_individual = Match_Individual.query.filter(Match_Individual.date_time < time_now).filter(
        Match_Individual.clg_1st_player_id == 0).order_by(
        Match_Individual.date_time.desc()).all()
    list_live_individual = []
    for match in live_match_individual:
        sport = Sports.query.filter(Sports.id == match.sport_id).first().sports_name
        category = Sports.query.filter(Sports.id == match.sport_id).first().category
        sport = sport + " - " + category
        list_live_individual.append({"sport": sport, "id": match.id})

    live_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).all()
    list_live = []
    for match in live_matches:
        clg1 = College.query.filter(College.id == match.clg_id1).first().clg_name
        clg2 = College.query.filter(College.id == match.clg_id2).first().clg_name
        logo1 = College.query.filter(College.id == match.clg_id1).first().logo_url
        logo2 = College.query.filter(College.id == match.clg_id2).first().logo_url
        sport = Sports.query.filter(Sports.id == match.sports_id).first().sports_name
        category = Sports.query.filter(Sports.id == match.sports_id).first().category
        sport = sport + " - " + category
        dict1 = {"score1": match.score1, "score2": match.score2, "commentry": match.commentry, "clg1": clg1,
                 "clg2": clg2, "sport": sport, "venue": match.venue, "level": match.level, "id": match.id,
                 "logo1": logo1, "logo2": logo2}
        list_live.append(dict1)

    colleges = College.query.all()
    return render_template('livescore.html', live=list_live, prev=list_prev, prev2=list_prev_individual,
                           colleges=colleges, live_individual=list_live_individual)


@app.route('/endMatchDetails', methods=['GET', 'POST'])
@login_required
def endMatchDetails():
    if (request.method == 'POST'):
        match = Match.query.filter(Match.id == int(request.form.get('id'))).first()
        match.winner_clg_id = int(request.form.get('winner_clg_id'))
        cldisd = [match.clg_id2, match.clg_id1]
        try:
            cldisd.remove(int(request.form.get('winner_clg_id')))
        except:
            flash("Selected wrong College")
            return redirect(url_for("getLiveMatches"))
        match.runner_clg_id = int(cldisd[0])
        match.status = request.form.get('status')
        db.session.commit()
    return redirect(url_for("getLiveMatches"))


@app.route('/setMatchDetails', methods=['GET', 'POST'])
@login_required
def setMatchDetails():
    if (request.method == 'POST'):
        match = Match.query.filter(Match.id == int(request.form.get('id'))).first()
        match.score1 = request.form.get('score1')
        match.score2 = request.form.get('score2')
        match.commentry = request.form.get('commentary')
        db.session.commit()
    return redirect(url_for("getLiveMatches"))


@app.route("/getPlayersIndividual", methods=['GET', 'POST'])
@login_required
def getPlayers():
    if (request.method == 'POST'):
        id_match = request.form.get('sport_id')
        match = Match_Individual.query.filter(id_match == Match_Individual.id).first()
        players = match.players.strip().split(',')
        player_list = []
        for player in players:
            plyr = Players.query.filter(int(player) == Players.id).first()
            name, college = plyr.name, College.query.filter(plyr.college_id == College.id).first().clg_name
            player_list.append({"option": name + ' - ' + college, "id": int(player)})
        player_list = {"name": player_list}
        # print(player_list)
        return json.dumps(player_list)
    return "error"


@app.route('/endIndividualMatch', methods=['GET', 'POST'])
@login_required
def endIndividualMatch():
    if (request.method == 'POST'):
        sport_id = request.form.get('id')
        match = Match_Individual.query.filter(Match_Individual.id == int(sport_id)).first()
        match.clg_1st_player_id = int(request.form.get('player1'))
        match.clg_2nd_player_id = int(request.form.get('player2'))
        match.clg_3rd_player_id = int(request.form.get('player3'))
        match.clg_4th_player_id = int(request.form.get('player4'))
        match.clg_1st = Players.query.filter(Players.id == int(request.form.get('player1'))).first().college_id
        match.clg_2nd = Players.query.filter(Players.id == int(request.form.get('player2'))).first().college_id
        match.clg_3rd = Players.query.filter(Players.id == int(request.form.get('player3'))).first().college_id
        match.clg_4th = Players.query.filter(Players.id == int(request.form.get('player4'))).first().college_id
        match.status = request.form.get('status')
        match.comments = request.form.get('comments')
        db.session.commit()
        return redirect(url_for("getLiveMatches"))
    return "error"


# application = app

# if __name__ == '__main__':
#     app.run(host='0.0.0.0', port=5000, debug=True)

app.run(debug=True)
