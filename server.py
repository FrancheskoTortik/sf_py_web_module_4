from bottle import route, run, view, get, static_file
from datetime import datetime as dt
from random import random
import os

cwd = os.getcwd() + os.sep + 'views' + os.sep + 'predictions.tpl'

@route("/")
@view(cwd)
def index():
  now = dt.now()

  x = random()

  return {
    "date": f"{now.year}-{now.month}-{now.day}",
    "predictions": [
      "После обеда ожидайте неожиданного праздника.",
      "Днем остерегайтесь неожиданного праздника.",
      "Утром ожидайте гостей из забытого прошлого.",
    ],
    "special_date": x > 0.5,
    "x": x,
  }

@route("/api/test")
def api_test():
    return {"test_passed": True}

@route('/helpers.js')
def js():
   return static_file('helpers.js', root='.')

run(
  host="localhost",
  port=8080,
  autoreload=True
)