from flask import Blueprint, render_template

views = Blueprint('views',__name__)

@views.route('/')
def landing():
    return render_template("landing.html")

@views.route('/topping')
def topping():
    return "<h1>Topping</h1>"

@views.route('/pizza')
def pizza():
    return "<h1>Pizza</h1>"