import mysql.connector
from flask import jsonify, request, json, render_template
from __main__ import app

con = mysql.connector.connect(
  host="localhost", user="root",
  password="", database="clips-alopecia"
  )
cursor = con.cursor(dictionary=True)

@app.route('/faq')
def faq():
    return render_template('faq.html')

@app.route('/questionStart')
def questionStart():
    return render_template('question/questionStart.html')

@app.route('/questionStart2')
def questionStart2():
    return render_template('question/questionStart2.html')

@app.route('/gejala7')
def gejala7():
    return render_template('question/gejala7.html')

@app.route('/gejala10')
def gejala10():
    return render_template('question/gejala10.html')

@app.route('/gejala13')
def gejala13():
    return render_template('question/gejala13.html')

@app.route('/gejala15')
def gejala15():
    return render_template('question/gejala15.html')

@app.route('/gejala17')
def gejala17():
    return render_template('question/gejala17.html')

@app.route('/gejala18')
def gejala18():
    return render_template('question/gejala18.html')

@app.route('/gejala19')
def gejala19():
    return render_template('question/gejala19.html')

@app.route('/gejala20')
def gejala20():
    return render_template('question/gejala20.html')



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
            kode_gejala = row["kode_gejala"],
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
        kodePenyakit = data['kodePenyakit']
        queryGetOutput = "select * from tbl_penyakit where kode_penyakit = %s"
        cursor.execute(queryGetOutput, (kodePenyakit))
        hasil = cursor.fetchall()
        for row in hasil:
            output_penyakit = row["output_penyakit"]
            ringkasan_penyakit = row["ringkasan_penyakit"]
            ringkasan2_penyakit = row["ringkasan2_penyakit"]
            ringkasan3_penyakit = row["ringkasan3_penyakit"]
            is_diagnosis = row["is_diagnosis"]

        return jsonify({
            'output_penyakit' : output_penyakit,
            'ringkasan_penyakit' : ringkasan_penyakit,
            'ringkasan2_penyakit' : ringkasan2_penyakit,
            'ringkasan3_penyakit' : ringkasan3_penyakit,
            'is_diagnosis' : is_diagnosis
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
        kodeGejalaDeskripsi = data['kodeGejalaDeskripsi']
        querygetDeskripsiGejala = "select * from tbl_gejala where kode_gejala = %s"
        cursor.execute(querygetDeskripsiGejala, (kodeGejalaDeskripsi,))
        hasil = cursor.fetchall()
        for row in hasil:
            gejala = row["gejala"]

        return jsonify({
            'gejala' : gejala
        })
    except:
        return jsonify({
            'status': 'error'
        })
