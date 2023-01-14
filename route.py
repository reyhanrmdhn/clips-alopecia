from flask import render_template
from __main__ import app

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/faq')
def faq():
    return render_template('faq.html')

@app.route('/questionStart')
def questionStart():
    return render_template('question/questionStart.html')

@app.route('/gejala17')
def gejala17():
    return render_template('question/gejala17.html')

@app.route('/gejala18')
def gejala18():
    return render_template('question/gejala18.html')

@app.route('/gejala20')
def gejala20():
    return render_template('question/gejala20.html')