import mysql.connector
from flask import jsonify, request, json, render_template
from __main__ import app

con = mysql.connector.connect(
  host="localhost", user="root",
  password="", database="dbom_clips-alopecia"
  )
cursor = con.cursor(dictionary=True)

@app.route('/faq')
def faq():
    return render_template('faq.html')

@app.route('/')
def landingPage():
    return render_template('landing-page.html')

@app.route('/questionStart')
def questionStart():
    return render_template('questionStart.html')

@app.route('/getRule', methods=['POST'])
def getRule():
    data = request.get_data(as_text=True)
    try:
        data = json.loads(data)
        kodeRule = data['kodeRule']
        queryGetRule = "SELECT * FROM tbl_rule WHERE rule LIKE CONCAT(%s,'%')"
        cursor.execute(queryGetRule, (kodeRule,))
        hasil = cursor.fetchall()
        return jsonify({
            'result' : hasil
        })
    except:
        return jsonify({
            'status': 'error'
        })

@app.route('/getGejalaSelanjutnya', methods=['POST'])
def getGejalaSelanjutnya():
    data = request.get_data(as_text=True)
    try:
        data = json.loads(data)
        kodeGejala = data['kodeGejala']
        querygetGejalaSelanjutnya = "SELECT * FROM tbl_gejala WHERE kode_gejala = %s"
        cursor.execute(querygetGejalaSelanjutnya, (kodeGejala,))
        hasil = cursor.fetchall()
        for row in hasil:
            kode_gejala = row["kode_gejala"]
            gejala = row["gejala"]
            pertanyaan_gejala = row["pertanyaan_gejala"]

        return jsonify({
            'kode_gejala' : kode_gejala,
            'gejala' : gejala,
            'pertanyaan_gejala' : pertanyaan_gejala
        })
    except:
        return jsonify({
            'status': 'error'
        })

@app.route('/getOutput', methods=['POST'])
def getOutput():
    data = request.get_data(as_text=True)
    try:
        data = json.loads(data)
        kodePenyakitHasil = data['kodePenyakitHasil']
        queryGetOutput = "select * from tbl_penyakit where kode_penyakit = %s"
        cursor.execute(queryGetOutput, (kodePenyakitHasil,))
        hasil = cursor.fetchall()
        for row in hasil:
            nama_penyakit = row["nama_penyakit"]
            ringkasan_penyakit = row["ringkasan_penyakit"]
            ringkasan2_penyakit = row["ringkasan2_penyakit"]
            ringkasan3_penyakit = row["ringkasan3_penyakit"]

        return jsonify({
            'nama_penyakit' : nama_penyakit,
            'ringkasan_penyakit' : ringkasan_penyakit,
            'ringkasan2_penyakit' : ringkasan2_penyakit,
            'ringkasan3_penyakit' : ringkasan3_penyakit,
        })
    except:
        return jsonify({
            'status': 'error'
        })


@app.route('/getGejalaHasil', methods=['POST'])
def getGejalaHasil():
    data = request.get_data(as_text=True)
    try:
        data = json.loads(data)
        kodePenyakitHasil = data['kodePenyakitHasil']
        querygetGejalaHasil = "select * from tbl_rule where kode_penyakit = %s"
        cursor.execute(querygetGejalaHasil, (kodePenyakitHasil,))
        hasil = cursor.fetchall()
        for row in hasil:
            rule = row["rule"]

        return jsonify({
            'rule' : rule
        })
    except:
        return jsonify({
            'status': 'error'
        })


@app.route('/getDeskripsiGejala', methods=['POST'])
def getDeskripsiGejala():
    data = request.get_data(as_text=True)
    try:
        data = json.loads(data)
        querygetDeskripsiGejala = "select * from tbl_gejala"
        cursor.execute(querygetDeskripsiGejala)
        hasil = cursor.fetchall()

        return jsonify({
            'hasil' : hasil,
        })
    except:
        return jsonify({
            'status': 'error'
        })
