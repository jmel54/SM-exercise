from flask import Blueprint, render_template

views = Blueprint('views',__name__)

@views.route('/')
def landing():
    return render_template("landing.html")

@views.route('/owner')
def owner():
    return render_template("owner.html")

@views.route('/chef')
def chef():
    return render_template("chef.html")