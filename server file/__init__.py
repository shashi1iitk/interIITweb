import json
import os
import re
from datetime import datetime
from datetime import timedelta


import pyqrcode
from flask import Flask, render_template, request, redirect, url_for, flash, send_file
from flask_login import LoginManager, UserMixin, login_required, login_user, logout_user, current_user
from flask_mail import Mail
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func

local_server = True
app = Flask(__name__)
app.secret_key = os.urandom(24)

app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True
)

mail = Mail(app)
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "log_in"
login_manager.login_message = u"Please log in to access this page"

app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:4321@#interiit@localhost/interiit2019"

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


class Match_Relay(db.Model):
    __tablename__ = 'schedule_result_relay'
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
    status = db.Column(db.Integer)
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



class NewsSubs(UserMixin, db.Model):
    __tablename__ = 'news_subscribers'
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(200), nullable=False)
    timestamp  = db.Column(db.DateTime(100), nullable=False)


class Inquiry(UserMixin, db.Model):
    __tablename__ = 'inquiry'
    id = db.Column(db.Integer, primary_key=True)
    timestamp  = db.Column(db.DateTime(100), nullable=False)
    email = db.Column(db.String(200), nullable=False)
    type = db.Column(db.String(400), nullable=False)
    content  = db.Column(db.String(10000), nullable=False)

class QrLogger(UserMixin, db.Model):
    __tablename__ = 'qr_logger'
    id = db.Column(db.Integer, primary_key=True)
    timestamp = db.Column(db.DateTime(100), nullable=False)
    count_qr_scanner_1 = db.Column(db.Integer, nullable=False)
    count_qr_scanner_2 = db.Column(db.Integer, nullable=False)
    count_qr_scanner_3 = db.Column(db.Integer, nullable=False)
    reset_done_by = db.Column(db.String(100), nullable=False)




@app.route("/register", methods=['GET', 'POST'])
@login_required
def register():
    if (request.method == 'POST'):
        print(request.files)
        print(request.form)
        name = re.sub('\s+',' ', request.form['name'].upper()).strip()
        email = re.sub('\s+',' ',request.form['email']).strip()
        if Players.query.filter_by(email=email).count() != 0:
            return "Email address already registered!"
        roll_no = re.sub('\s+',' ', request.form['roll_no']).strip()
        mobile = request.form['mobile']
        if len(str(mobile)) != 10:
            return "Correct the mobile number please"
        if Players.query.filter_by(mobile=mobile).count() != 0:
            return "Mobile number already registered!"
        jursey_name = request.form['jursey_name']
        special_inst = request.form['special_inst']
        food = request.form['food']
        gender = request.form['gender']
        blood_group = request.form['blood_group']
        college = current_user.college_id
        selected_sports = request.form['selected_sports']
        selected_sports = selected_sports.strip(' \n')
        # lastrec = Players.query.filter_by(id=db.session.query(func.max(Players.id))).all()
        filename = name + " - " + email + '.jpg'
        if "profile_img" not in request.files:
            return "There is some error with the profile image"
        profile_img = request.files['profile_img']
        if profile_img.filename == '':
            return "There is some error with the profile image"
        p = "/var/www/FlaskApp/FlaskApp"
        x = os.path.join(p, "static", "profile_images", str(current_user.username.replace("@", " ")))
        if not os.path.exists(x):
            os.makedirs(x)
        profile_img.save(os.path.join(x, filename))
        entry = Players(name=name, email=email, mobile=mobile, jursey_name=jursey_name,
                        selected_sports=selected_sports, special_inst=special_inst, food=food,
                        gender=gender,
                        blood_group=blood_group, college_id=college, roll_no=roll_no, reg_status=0,
                        game_gold=0,
                        game_silver=0, game_bronze=0, profile_image_url=filename, feeded=0)
        db.session.add(entry)
        try:
            qrname = name + " - " + email + '.svg'
            s = email + "^" + roll_no
            url = pyqrcode.create(s)

            x = os.path.join(p, "static", "profile_qr", str(current_user.username.replace("@", " ")))
            if not os.path.exists(x):
                os.makedirs(x)
            url.svg(os.path.join(x, qrname), scale=8)
            db.session.commit()
        except:
            return "Some error occurred. Please try again!"
        return "Success"
    sports = Sports.query.all()
    college = College.query.all()
    return render_template('register.html', allSports=sports, college=college)


@app.route("/deletePlayer", methods=['GET', 'POST'])
@login_required
def deletePlayer():
    if (request.method == 'POST'):
        id = int(request.data)
        print(id)
        try:
            plyr = Players.query.filter_by(id=id).first()
            db.session.delete(Players.query.filter_by(id=id).first())
            db.session.commit()
            p = "/var/www/FlaskApp/FlaskApp"
            x = os.path.join(p, "static", "profile_qr", str(current_user.username.replace("@"," ")))
            qrname = plyr.name + " - " + plyr.email + '.svg'
            os.remove(os.path.join(x, qrname))
            x = os.path.join(p, "static", "profile_images", str(current_user.username.replace("@"," ")))
            os.remove(os.path.join(x, plyr.profile_image_url))
        except Exception:
            return "Fail"
    return "Success"

@app.route("/")
def home():
    return render_template('index.html')


@login_manager.user_loader
def load_user(user_id):
    return Admins.query.get(user_id)


@app.before_request
def before_request():
    if 'profile_images' in request.url:
        if not current_user.is_authenticated:
            return redirect(url_for('login'))
        elif current_user.privilege != 0:
            return redirect(url_for('login'))
    if 'profile_qr' in request.url:
        if not current_user.is_authenticated:
            return redirect(url_for('login'))
        elif current_user.privilege != 0:
            return redirect(url_for('login'))



@app.route("/newsSubscribe", methods=['POST'])
def newsSubscribe():
    if (request.method == 'POST'):
        try:
            email = request.form['email'].lower()
            entry = NewsSubs(email=email)
            db.session.add(entry)
            db.session.commit()
            return "Success"
        except:
            return "Fail"


@login_manager.unauthorized_handler
def unauthorized():
    flash('You must be logged in to view that page.')
    return redirect(url_for('login'))


@app.route("/showCandidates")
@login_required
def showCandidates():
    students = Players.query.filter_by(college_id=current_user.college_id).all()
    param = []
    staff = []
    c_p = 0
    c_s = 0
    for stud in students:
        gmlst = []
        if stud.selected_sports.strip(' \n') == "staff":
            staff.append(stud)
            c_s = c_s + 1
            continue
        else:
            for no in stud.selected_sports.split(','):
                sp = Sports.query.filter_by(id=int(no)).first()
                gmlst.append(sp.sports_name + '(' + sp.category + ') ')
            param.append((stud, ' | '.join(gmlst)))
            c_p = c_p + 1
    counts = [c_p, c_s]
    return render_template('showCandidates.html', params=param, staffs=staff, counts=counts)


@app.route("/showCandidatesBySports")
@login_required
def showCandidatesBySports():
    students = Players.query.filter_by(college_id=current_user.college_id).all()
    sports = Sports.query.order_by(Sports.id.asc()).all()

    param = []
    for game in sports:
        gmplayer = []
        for stud in students:
            if stud.selected_sports.strip(' \n') == "staff":
                continue
            else:
                for no in stud.selected_sports.split(','):
                    if (int(no) == game.id):
                        gmplayer.append(stud)
        param.append((game.sports_name + '(' + game.category + ')' + ' [' + 'Max. Players Allowed: ' + str(
            game.max_player) + ']', gmplayer))
    print(param)

    return render_template('showCandidatesBySports.html', params=param)


@app.route("/allPlayers0")
@login_required
def allPlayers0():
    if (current_user.privilege == 0):
        students = Players.query.order_by(Players.college_id.asc()).all()
        player = []
        for stud in students:
            clg = College.query.filter_by(id=stud.college_id).first()

            if stud.selected_sports.strip(' \n') == "staff":
                sel_sp = "STAFF"
            else:
                gmlst = []
                for no in stud.selected_sports.split(','):
                    sp = Sports.query.filter_by(id=int(no)).first()
                    gmlst.append(sp.sports_name + '(' + sp.category + ') ')
                sel_sp = ' , '.join(gmlst)
            player.append((stud, clg.clg_name, sel_sp, stud.profile_image_url))
        # print(param)
        print(player)
        return render_template('allPlayers0.html', players=player)
    else:
        return "Not allowed!"


@app.route("/allPlayers")
@login_required
def allPlayers():
    if (current_user.privilege == 0):
        # sports = Sports.query.order_by(Sports.id.asc()).all()
        clg = College.query.all()

        bigl = []
        for cl in clg:
            college = []
            # college.append(cl.clg_name)
            candi = Players.query.filter_by(college_id=int(cl.id)).all()
            student = []
            num_stud = 0
            staff = []
            num_staff = 0

            for stud in candi:
                if stud.selected_sports.strip(' \n') == "staff":
                    staff.append(stud)
                    num_staff = num_staff + 1
                else:
                    gmlst = []
                    for no in stud.selected_sports.split(','):
                        sp = Sports.query.filter_by(id=int(no)).first()
                        gmlst.append(sp.sports_name + '(' + sp.category + ') ')
                    sel_sp = ' , '.join(gmlst)
                    student.append((stud, sel_sp))
                    num_stud = num_stud + 1
            print(student)
            print(staff)
            cl_details = cl.clg_name + " (" + str(num_stud) + ", " + str(num_staff) + ")"
            bigl.append((cl_details, student, staff))
        return render_template('allPlayers.html', bigl=bigl)


@app.route("/Insights")
@login_required
def Insights():
    if (current_user.privilege == 0):
        all = Players.query.order_by(Players.college_id.asc()).all()
        total = 0

        tot_players = 0
        tot_players_male = 0
        tot_players_male_veg = 0
        tot_players_female = 0
        tot_players_female_veg = 0

        tot_staff = 0
        tot_staff_male = 0
        tot_staff_male_veg = 0
        tot_staff_female = 0
        tot_staff_female_veg = 0

        special = []
        for each in all:
            total += 1
            if each.selected_sports.strip(' \n') == "staff":
                tot_staff += 1
                if each.gender == "M":
                    tot_staff_male += 1
                    if each.food == "Veg":
                        tot_staff_male_veg += 1
                else:
                    tot_staff_female += 1
                    if each.food == "Veg":
                        tot_staff_female_veg += 1
            else:
                tot_players += 1
                if each.gender == "M":
                    tot_players_male += 1
                    if each.food == "Veg":
                        tot_players_male_veg += 1
                else:
                    tot_players_female += 1
                    if each.food == "Veg":
                        tot_players_female_veg += 1

            if each.special_inst != "" and each.special_inst != "no" and each.special_inst != "NO" and each.special_inst != "No" and each.special_inst != "None" and each.special_inst != "-":
                clg = College.query.filter_by(id=each.college_id).first()
                if each.selected_sports.strip(' \n') == "staff":
                    sel_sp = "STAFF"
                else:
                    gmlst = []
                    for no in each.selected_sports.split(','):
                        sp = Sports.query.filter_by(id=int(no)).first()
                        gmlst.append(sp.sports_name + '(' + sp.category + ') ')
                    sel_sp = ' , '.join(gmlst)
                special.append((each, clg.clg_name, sel_sp))

        print(special)

        return render_template('Insights.html', total=total, tot_players=tot_players, tot_players_male=tot_players_male,
                               tot_players_male_veg=tot_players_male_veg, tot_players_female=tot_players_female,
                               tot_players_female_veg=tot_players_female_veg,
                               tot_staff=tot_staff, tot_staff_male=tot_staff_male,
                               tot_staff_male_veg=tot_staff_male_veg, tot_staff_female=tot_staff_female,
                               tot_staff_female_veg=tot_staff_female_veg, special=special)


@app.route("/login", methods=['GET', 'POST'])
def login():
    if (request.method == 'POST'):
        email = request.form['username']
        password = request.form['password']
        # hash = oracle10.hash(password, user="player")
        user = Admins.query.filter_by(username=email).first()
        if user is None:
            return "Invalid Credentials!"
        elif (user.password != password):
            return "Wrong Password!"
        elif (user.privilege == -1):
            return "Id deactivated!"
        else:
            login_user(user, remember=True)
            return "Success"
    else:
        return render_template('login.html')


@app.route("/loginSuccess")
@login_required
def loginSuccess():
    return render_template('loginSuccess.html')


@app.route("/finaliseReg", methods=['GET', 'POST'])
@login_required
def finaliseReg():
    if (current_user.privilege == 1 and request.method == 'POST'):
        id = int(request.data)
        # print(id)
        try:
            admin = Admins.query.filter_by(id=id).first()
            admin.privilege = -1
            db.session.commit()

        except Exception:
            return "Fail"
        return "Success"


@app.route("/qrscanner", methods=['GET', 'POST'])
@login_required
def qrscanner():
    if (request.method == 'POST'):
        qrcont = request.form['content']
        print(qrcont)
        email = qrcont.split("^")[0]
        user = Players.query.filter_by(email=email).first()
        if (user is None):
            return "Fail"
        elif (user.feeded == 0):
            user.feeded = current_user.privilege
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
        permitted_by_1 = Players.query.filter(Players.feeded == 4).count()
        permitted_by_2 = Players.query.filter(Players.feeded == 5).count()
        permitted_by_3 = Players.query.filter(Players.feeded == 6).count()

        entry = QrLogger(count_qr_scanner_1 = permitted_by_1, count_qr_scanner_2 = permitted_by_2, count_qr_scanner_3 = permitted_by_3, reset_done_by = current_user.role)

        db.session.add(entry)
        
        al = Players.query.update({Players.feeded: 0})
        db.session.commit()
        return redirect(url_for("qrstats"))
    else:
        permitted_by_u = Players.query.filter(Players.feeded == current_user.privilege).count()
        total_permitted = Players.query.filter(Players.feeded.in_([4, 5, 6])).count()

        stat = {"permitted_by_u": permitted_by_u, "total_permitted": total_permitted}
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
                pts.append(
                    {"name": name, "point": sport_point.__dict__["c_" + str(i)], "clg_id": i, "logo": logo})
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
    return render_template('schedule.html')



@app.route("/sponsors_full")
def sponsors_full():
    return render_template('sponsors.html')

@app.route("/sponsors")
def sponsors_mob():
    return render_template('spons_mob.html')




@app.route("/logout")
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))


@app.route("/gallery")
def gallery():
    return render_template('gallery.html')


@app.route("/android_app")
def android_app():
    return render_template('android_app.html')
    
@app.route("/download_android_app")
def download_android_app():
    # result = send_file(r"C:\xampp\htdocs\InterIIT_master\Android App\app-release.apk", attachment_filename="InterIIT Sports Meet 2019.apk", as_attachment=True)
    # # We can also delete this file here now
    # return result
    return redirect("https://play.google.com/store/apps/details?id=com.iitkharagpur.interiitsports2")


@app.route("/download_from_interiit_server")
def download():
    result = send_file(r"/var/www/FlaskApp/FlaskApp/static/app-release.apk",
                       attachment_filename="InterIIT Sports Meet 2019.apk", as_attachment=True)
    return result

@app.route("/time_now")
def time_now():
    return str(datetime.now())


@app.route("/privacy_policy")
def privacy_policy():
    return render_template('privacy_policy.html')


@app.route("/live")
def live():
    return render_template('live.html')


@app.route("/queries")
def queries():
    return render_template('queries.html')


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


@app.route('/fileInquiry/<qr_val>/<type>/<inqiry>', methods=['GET', 'POST'])
def fileInquiry(qr_val, type, inqiry):
    try:
        email = qr_val.split("^")[0]
        entry = Inquiry(email=email, type=type, content=inqiry)
        db.session.add(entry)
        db.session.commit()
        return json.dumps("Success")
    except:
        return json.dumps("Fail")


@app.route('/profile_req_with_qr/<qr_val>', methods=['GET', 'POST'])
def profile_req_with_qr(qr_val):
    try:
        email = qr_val.split("^")[0]
        player = Players.query.filter(Players.email == email).first()
        if (player is None):
            return json.dumps("Player_not_found!")
        else:
            if (player.selected_sports == "staff"):
                sel_sp = "Staff"
            else:
                gmlst = []
                for no in player.selected_sports.split(','):
                    sp = getSport(int(no))
                    gmlst.append(sp.sports_name + '(' + sp.category + ')')
                sel_sp = ', '.join(gmlst)
            return_val = {"name": player.name, "email": player.email, "iit": getClgName(player.college_id),  "selected_sports": sel_sp}
            return json.dumps([return_val])
    except:
        return json.dumps("Fail")

@app.route('/getLiveMatches_Details_Android/<game_name>', methods=['GET', 'POST'])
def getLiveMatches_Details_Android(game_name):
    game_name = game_name

    time_now = datetime.now()

    games = Sports.query.filter(Sports.sports_name == game_name).all()
    list_live = []
    for game in games:
        matchl = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id == 0).filter(
            Match.sports_id == game.id).all()
        if (matchl != []):
            for match in matchl:
                sp = getSport(match.sports_id)
                dict1 = {"sport_name": sp.sports_name, "unique_id": match.id,
                         "level": match.level + "(" + sp.category + ")",
                         "venue_time": "At " + match.venue + " from " + str(
                             ":".join(((str(match.date_time)).split(' ')[1]).split(':')[0:2])),
                         "clg1": getClgName(match.clg_id1), "clg2": getClgName(match.clg_id2),
                         "score1": str(match.score1), "score2": str(match.score2), "commentry": str(match.commentry)}
                list_live.append(dict1)

    return json.dumps(list_live)

@app.route('/getSchedule_Team_Matches_Deatils_Android/<game_name>/<day>', methods=['GET', 'POST'])
def getSchedule_Team_Matches_Ajax_Android(game_name, day):
    game_name = game_name
    day = int(day)
    day0 = "2019-12-14 00:00:00.000000"
    day0 = datetime.strptime(day0, '%Y-%m-%d %H:%M:%S.%f')
    start_day = day0 + timedelta(days=day)
    end_day = day0 + timedelta(days=day+1)
    print(start_day)
    print(end_day)

    games = Sports.query.filter(Sports.sports_name == game_name).all()
    list_all = []
    for game in games:
        matchl = Match.query.filter(start_day < Match.date_time).filter(Match.date_time < end_day).filter(Match.sports_id == game.id).order_by(Match.date_time.asc()).all()
        if(matchl != []):
            for match in matchl:
                sp = getSport(match.sports_id)
                sport_name = sp.sports_name + "(" +  sp.category + ")"
                if(match.winner_clg_id == 0):
                    win_score = ""
                    run_score = ""
                    status = ""
                elif(match.winner_clg_id == -1):
                    win_score = " ("+ str(match.score1)+")"
                    run_score = " ("+ str(match.score2)+")"
                    status = "Draw"
                elif(match.clg_id1 == match.winner_clg_id):
                    win_score = " ("+ str(match.score1)+")"
                    run_score = " ("+ str(match.score2)+")"
                    status = str(match.status)
                else:
                    win_score = " ("+ str(match.score2)+")"
                    run_score = " ("+ str(match.score1)+")"
                    status = str(match.status)
                dict1 = {"sport_name": sport_name, "unique_id" : match.id, "datetime": str(match.date_time), "level": sp.category + ": " + match.level, "venue_time": "At " +  match.venue + " on "+ str(match.date_time.day)+"/"+ str(match.date_time.month)+ " from "+str(":".join(((str(match.date_time)).split(' ')[1]).split(':')[0:2])), "clg1": getClgName(match.clg_id1),"clg2": getClgName(match.clg_id2), "score1": str(match.score1), "score2": str(match.score2),"winner": getClgName(match.winner_clg_id)+ win_score, "runner": getClgName(match.runner_clg_id) + run_score, "status": status, "commentry": str(match.commentry)}
                list_all.append(dict1)
    list_all = sorted(list_all, key=lambda x : x['datetime'])
 
    return json.dumps(list_all)

@app.route('/getSchedule_Individual_Matches_Deatils_Android/<game>', methods=['GET', 'POST'])
def getSchedule_Individual_Matches_Deatils_Android(game):
    game = game.lower()
    sports = Sports.query.all()
    game_ids = []
    for sport in sports:
        sp = sport.sports_name.lower()
        if sp.find(game) == 0:
            game_ids.append(sport.id)

    list_all = []
    for game_id in game_ids:
        matchl = Match_Individual.query.filter(Match_Individual.sport_id == game_id).order_by(
            Match_Individual.date_time.asc()).all()
        if (matchl != []):
            for match in matchl:
                sp = getSport(match.sport_id)
                sport_name = sp.sports_name + "(" + sp.category + ")"
                dict1 = {"sport_name": sport_name,
                         "venue": "At " + match.venue + " on " + str(match.date_time.day) + "/" + str(
                             match.date_time.month) + " from " + str(
                             ":".join(((str(match.date_time)).split(' ')[1]).split(':')[0:2])),
                         "win1": getPlayerName(match.clg_1st_player_id) + " - " + getClgName(match.clg_1st),
                         "win2": getPlayerName(match.clg_2nd_player_id) + " - " + getClgName(match.clg_2nd),
                         "win3": getPlayerName(match.clg_3rd_player_id) + " - " + getClgName(match.clg_3rd),
                         "win4": getPlayerName(match.clg_4th_player_id) + " - " + getClgName(match.clg_4th)}
                list_all.append(dict1)

    for game_id in game_ids:
        matchl = Match_Relay.query.filter(Match_Relay.sport_id == game_id).order_by(Match_Relay.date_time.asc()).all()
        print(matchl)
        if (matchl != []):

            for match in matchl:
                sp = getSport(match.sport_id)
                sport_name = sp.sports_name + "(" + sp.category + ")"
                dict1 = {"sport_name": sport_name,
                         "venue": "At " + match.venue + " on " + str(match.date_time.day) + "/" + str(
                             match.date_time.month) + " from " + str(
                             ":".join(((str(match.date_time)).split(' ')[1]).split(':')[0:2])),
                         "win1": getClgName(match.clg_1st), "win2": getClgName(match.clg_2nd),
                         "win3": getClgName(match.clg_3rd), "win4": getClgName(match.clg_4th)}
                list_all.append(dict1)

    list_all = sorted(list_all, key=lambda x: x['venue'])

    return json.dumps(list_all)


@app.route('/temp', methods=['GET', 'POST'])
def temp():
    day = 5
    day0 = "2019-12-14 00:00:00.000000"
    day0 = datetime.strptime(day0, '%Y-%m-%d %H:%M:%S.%f')
    start_day = day0 + timedelta(days=day)
    end_day = day0 + timedelta(days=day + 1)
    print(start_day)
    print(end_day)
    return "Ok"


def getClgName(clg_id):
    if (clg_id == 0):
        return "None"
    elif(clg_id == -1):
        return "Nil"
    clg = College.query.filter(College.id == clg_id).first()
    return clg.clg_name


def getPlayerName(p_id):
    if (p_id == 0):
        return "None"
    p = Players.query.filter(Players.id == p_id).first()
    return p.name


def getSport(sp_id):
    sp = Sports.query.filter(Sports.id == sp_id).first()
    return sp

@app.route('/getLiveMatches', methods=['GET', 'POST'])
def getLiveMatches():
    time_now = datetime.now()

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
                 "clg2": clg2, "sport": sport, "venue": "At " + match.venue + " on " + str(match.date_time.day) + "/" + str(
                             match.date_time.month) + " from " + str(
                             ":".join(((str(match.date_time)).split(' ')[1]).split(':')[0:2])), "level": match.level, "id": match.id,
                 "logo1": logo1, "logo2": logo2}
        list_live.append(dict1)
    print(list_live)

    colleges = College.query.all()
    return render_template('livescore.html', live=list_live, colleges=colleges)


@app.route('/setMatchDetails', methods=['GET', 'POST'])
@login_required
def setMatchDetails():
    if (request.method == 'POST'):
        print(request.form)
        match = Match.query.filter(Match.id == int(request.form.get('id'))).first()
        match.score1 = request.form.get('score1')
        match.score2 = request.form.get('score2')
        match.commentry = request.form.get('commentary')
        try:
            db.session.commit()
            return "Success"
        except:
            return "Error in updating"
    return "error"




@app.route("/getPlayersIndividual", methods=['GET', 'POST'])
@login_required
def getPlayersIndividual():
    if (request.method == 'POST'):
        print(request.form)
        id_match = request.form.get('match_id')
        print(id_match)
        id_sport = Match_Individual.query.filter(Match_Individual.id == int(id_match)).first().sport_id
        player_list = []
        for player in Players.query.all():
            selected_sports = player.selected_sports
            if (str(id_sport) in selected_sports.strip(" \n").split(",")):
                name, college = player.name, College.query.filter(player.college_id == College.id).first().clg_name
                player_list.append({"option": name + ' - ' + college, "id": int(player.id)})
        player_list = {"name": player_list}
        return json.dumps(player_list)
    return "error"


@app.route('/endMatchDetails', methods=['GET', 'POST'])
@login_required
def endMatchDetails():
    if (request.method == 'POST'):
        match = Match.query.filter(Match.id == int(request.form.get('id'))).first()
        print(request.form.get('winner_clg_id'))
        if int(request.form.get('winner_clg_id')) == -1:
            match.winner_clg_id = -1
            match.runner_clg_id = -1
        else:
            match.winner_clg_id = int(request.form.get('winner_clg_id'))
            cldisd = [match.clg_id2, match.clg_id1]
            try:
                cldisd.remove(int(request.form.get('winner_clg_id')))
            except:
                return "Selected wrong college"
            match.runner_clg_id = int(cldisd[0])
        match.status = request.form.get('status')
        # db.session.commit()
        if (match.level == "Final" or match.level == "3rd Place"):
            sport = match.sports_id
            row = Point_main.query.filter(Point_main.sports_id == sport).first()
            w = "row.c_" + str(int(request.form.get('winner_clg_id')))
            r = "row.c_" + str(int(cldisd[0]))
            if (match.level == "Final"):
                exec("%s = %d" % (w, 10))
                exec("%s = %d" % (r, 6))
            elif (match.level == "3rd Place"):
                exec("%s = %d" % (w, 4))
                exec("%s = %d" % (r, 2))
        try:
            db.session.commit()
            return "Success"
        except:
            return "Error in ending match"
    return redirect(url_for("getLiveMatches"))


@app.route("/sports")
def s1():
    return render_template('sports.html')


@app.route("/theLegacy")
def theLegacy():
    return render_template('theLegacy.html')


@app.route('/setIndividualMatchDetails', methods=['GET', 'POST'])
@login_required
def setIndividualMatches():
    if (current_user.privilege != 3):
        return redirect(url_for('login'))
    if (request.method == 'POST'):
        print(request.form)
        match = Match_Individual.query.filter(Match_Individual.id == int(request.form.get('matchid'))).first()
        player1 = int(request.form.get('player1'))
        clg_1st = Players.query.filter(
            Players.id == int(request.form.get('player1'))).first().college_id
        player2 = int(request.form.get('player2'))
        clg_2nd = Players.query.filter(
            Players.id == int(request.form.get('player2'))).first().college_id
        player3 = int(request.form.get('player3'))
        clg_3rd = Players.query.filter(
            Players.id == int(request.form.get('player3'))).first().college_id
        player4 = int(request.form.get('player4'))
        clg_4th = Players.query.filter(
            Players.id == int(request.form.get('player4'))).first().college_id
        players = ",".join([str(player1), str(player2), str(player3), str(player4)])
        clgs_palying = ",".join([str(clg_1st), str(clg_2nd), str(clg_3rd), str(clg_4th)])
        match.clgs_playing = clgs_palying
        match.players = players
        match.clg_1st = clg_1st
        match.clg_2nd = clg_2nd
        match.clg_3rd = clg_3rd
        match.clg_4th = clg_4th
        match.clg_1st_player_id = player1
        match.clg_2nd_player_id = player2
        match.clg_3rd_player_id = player3
        match.clg_4th_player_id = player4
        if (match.level == "Final"):
            sport = int(match.sport_id)
            print(sport)
            row = Point_main.query.filter(Point_main.sports_id == int(sport)).first()
            print(row)
            w1 = "row.c_" + str(clg_1st)
            w2 = "row.c_" + str(clg_2nd)
            w3 = "row.c_" + str(clg_3rd)
            w4 = "row.c_" + str(clg_4th)
            exec("%s += %d" % (w1, 5))
            exec("%s += %d" % (w2, 3))
            exec("%s += %d" % (w3, 2))
            exec("%s += %d" % (w4, 1))
        try:
            db.session.commit()
            return "Success"
        except:
            return "Try Again"
    return "error"


@app.route('/setRelayMatchDetails', methods=['GET', 'POST'])
@login_required
def setRelayMatchDetails():
    if (current_user.privilege != 3):
        return redirect(url_for('login'))
    if (request.method == 'POST'):
        print(request.form)
        match = Match_Relay.query.filter(Match_Relay.id == int(request.form.get("matchid"))).first()
        match.clg_1st = int(request.form.get('colleger1'))
        match.clg_2nd = int(request.form.get('colleger2'))
        match.clg_3rd = int(request.form.get('colleger3'))
        match.clg_4th = int(request.form.get('colleger4'))
        match.status = 1
        if match.level == "Final":
            sport = match.sport_id
            row = Point_main.query.filter(Point_main.sports_id == sport).first()
            w1 = "row.c_" + str(int(request.form.get('colleger1')))
            w2 = "row.c_" + str(int(request.form.get('colleger2')))
            w3 = "row.c_" + str(int(request.form.get('colleger3')))
            w4 = "row.c_" + str(int(request.form.get('colleger4')))
            exec("%s += %d" % (w1, 10))
            exec("%s += %d" % (w2, 6))
            exec("%s += %d" % (w3, 4))
            exec("%s += %d" % (w4, 2))
        try:
            db.session.commit()
            return "Success"
        except:
            return "Try Again"
    return "error"


@app.route('/addMatch', methods=['GET', 'POST'])
@login_required
def addMatches():
    if (current_user.privilege != 3):
        return redirect(url_for('login'))
    if (request.method == 'POST'):
        print(request.form)
        if request.form.get('type') == "team":
            lastrec = Match.query.filter_by(id=db.session.query(func.max(Match.id))).all()
            cnt = 1 if len(lastrec) == 0 else lastrec[-1].id + 1
            print(cnt)
            entry = Match(sports_id=request.form.get('sport'),
                          clg_id1=request.form.get('college1'), clg_id2=request.form.get('college2'),
                          date_time=request.form.get('datetime'), venue=request.form.get('venue'),
                          level=request.form.get('level'), score1=0, score2=0, winner_clg_id=0,
                          runner_clg_id=0,
                          status="", commentry="")
            db.session.add(entry)
        elif request.form.get('type') == "individual":
            lastrec = Match_Individual.query.filter_by(id=db.session.query(func.max(Match_Individual.id))).all()
            cnt = 1 if len(lastrec) == 0 else lastrec[-1].id + 1
            print(cnt)
            entry = Match_Individual(sport_id=request.form.get("sportid"),
                                     clgs_playing="", players="",
                                     date_time=request.form.get('datetime'),
                                     venue=request.form.get('venue'), clg_1st=0, clg_2nd=0, clg_3rd=0,
                                     clg_4th=0, clg_1st_player_id=0, clg_2nd_player_id=0,
                                     clg_3rd_player_id=0, clg_4th_player_id=0,
                                     level=request.form.get('level'), status="", comments="")
            db.session.add(entry)
        elif (request.form.get('type') == "relay"):
            lastrec = Match_Relay.query.filter_by(id=db.session.query(func.max(Match_Relay.id))).all()
            cnt = 1 if len(lastrec) == 0 else lastrec[-1].id + 1
            print(cnt)
            entry = Match_Relay(sport_id=int(request.form.get('sportid')),
                                clgs_playing="", players="", date_time=request.form.get('datetime'),
                                venue=request.form.get('venue'), clg_1st=0, clg_2nd=0, clg_3rd=0,
                                clg_4th=0, level=request.form.get('level'), status=0, comments="")
            db.session.add(entry)
        try:
            db.session.commit()
            return "Success"
        except:
            return "Try Again"
    sport = Sports.query.all()
    college = College.query.all()
    players = Players.query.all()
    players = [{"id": x.id, "name": x.name,
                "clg_name": (College.query.filter(College.id == int(x.college_id)).first()).clg_name} for x in players
               if x.selected_sports != "staff"]
    players.sort(key=lambda x: x["name"])

    match_individual = Match_Individual.query.filter(Match_Individual.clg_1st == 0).all()
    matchs_individual = []
    for match in match_individual:
        sport_name = Sports.query.filter(match.sport_id == Sports.id).first()
        matchs_individual.append([match, sport_name.sports_name + " (" + sport_name.category + ")"])
    print(matchs_individual)

    match_relay = Match_Relay.query.filter(Match_Relay.status == 0).all()
    matchs_relay = []
    for match in match_relay:
        sport_name = Sports.query.filter(match.sport_id == Sports.id).first()
        matchs_relay.append([match, sport_name.sports_name + " (" + sport_name.category + ")"])
    print(matchs_relay)

    return render_template('addMatch.html', sports=sport, colleges=college, players=players,
                           matchesIndividual=matchs_individual, matchesRelay=matchs_relay)


@app.route('/results', methods=['GET', 'POST'])
def results():
    sports = Sports.query.all()
    if (request.method == "POST"):
        print(request.form)
        time_now = datetime.now()
        sport_id = int(request.form.get('sportid'))
        sport_name = Sports.query.filter(Sports.id == sport_id).first()
        sport_name = sport_name.sports_name + " " + sport_name.category
        list_all = []
        prev_matches = Match.query.filter(Match.date_time < time_now).filter(Match.winner_clg_id != 0).filter(
            Match.sports_id == sport_id).order_by(Match.date_time.desc()).all()
        for match in prev_matches:
            if(match.winner_clg_id == -1):
                winner_college = "None"
                status = "Draw"
            else:
                winner_college = College.query.filter(College.id == match.winner_clg_id).first().clg_name
                status = match.status
            clg1 = College.query.filter(College.id == match.clg_id1).first().clg_name
            clg2 = College.query.filter(College.id == match.clg_id2).first().clg_name
            logo1 = College.query.filter(College.id == match.clg_id1).first().logo_url
            logo2 = College.query.filter(College.id == match.clg_id2).first().logo_url
            sport = Sports.query.filter(Sports.id == match.sports_id).first().sports_name
            category = Sports.query.filter(Sports.id == match.sports_id).first().category
            sport = sport + " - " + category
            
            dict0 = {"score1": match.score1, "score2": match.score2, "winner": winner_college, "clg1": clg1,
                     "clg2": clg2, "type": 't',
                     "sport": sport, "level": match.level + " on "+ str(match.date_time.day)+"/"+ str(match.date_time.month), "logo1": logo1, "logo2": logo2, "status": status}
            list_all.append(dict0)

        prev_matches_individual = Match_Individual.query.filter(Match_Individual.date_time < time_now).filter(
            Match_Individual.clg_1st_player_id != 0).filter(Match_Individual.sport_id == sport_id).order_by(
            Match_Individual.date_time.desc()).all()
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
                     "level": match.level  + " on "+ str(match.date_time.day)+"/"+ str(match.date_time.month), "status": match.status, "type": 'i'}
            list_all.append(dict0)

        prev_matches_relay = Match_Relay.query.filter(Match_Relay.date_time < time_now).filter(
            Match_Relay.status == 1).order_by(Match_Relay.date_time.desc()).filter(
            Match_Relay.sport_id == sport_id).all()
        for match in prev_matches_relay:
            sport = Sports.query.filter(Sports.id == match.sport_id).first().sports_name
            category = Sports.query.filter(Sports.id == match.sport_id).first().category
            sport = sport + " - " + category
            clg1 = College.query.filter(College.id == match.clg_1st).first().clg_name
            clg2 = College.query.filter(College.id == match.clg_2nd).first().clg_name
            clg3 = College.query.filter(College.id == match.clg_3rd).first().clg_name
            clg4 = College.query.filter(College.id == match.clg_4th).first().clg_name
            dict0 = {"clg1": clg1, "clg2": clg2, "clg3": clg3, "clg4": clg4, "sport": sport,
                     "level": match.level + " on "+ str(match.date_time.day)+"/"+ str(match.date_time.month), "status": match.comments, "type": 'r'}
            list_all.append(dict0)

        print(list_all)
        return json.dumps({"data":list_all, "name":sport_name})

    return render_template("results.html", sports_list=sports)



@app.route('/test', methods=['GET', 'POST'])
def test():
    return render_template('test.html')


import gspread
from oauth2client.service_account import ServiceAccountCredentials
import pprint
@app.route("/team")
def team():
    scope = ['https://spreadsheets.google.com/feeds','https://www.googleapis.com/auth/drive']
    
    creds = ServiceAccountCredentials.from_json_keyfile_name(r'/var/www/FlaskApp/FlaskApp/static/interiit-3496d59a50f3.json',scope)
    client = gspread.authorize(creds)

    sheet = client.open('iit_data').sheet1
    all = sheet.get_all_records()
    return render_template('ourteam.html',all = all)
    # return render_template('ourteam.html')



@app.route('/verifyPass/<username>/<password>', methods=['GET', 'POST'])
def verifyPass(username, password):
    admin = Admins.query.filter(Admins.username == username).filter(Admins.password == password).first()
    if admin is None:
        return json.dumps("-1")
    else:
        return json.dumps(str(admin.privilege))


@app.route('/addQR/<QRvalue>/<sent_id>/<password>', methods=['GET', 'POST'])
def addQR(QRvalue, sent_id, password):
    admin = Admins.query.filter(Admins.privilege == int(sent_id)).filter(Admins.password == password).first()
    if admin is None:
        return json.dumps("Admin ID Not Found!")
    else:
        email = QRvalue.split("^")[0]
        user = Players.query.filter_by(email=email).first()
        if (user is None):
            return json.dumps("Player not found!")
        elif (user.feeded == 0):
            user.feeded = int(sent_id)
            db.session.commit()
            return json.dumps("Success")
        else:
            return json.dumps("Fail")



application = app
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)







