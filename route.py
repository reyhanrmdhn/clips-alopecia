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

@app.route('/gejala17')
def gejala17():
    return render_template('question/gejala17.html')

@app.route('/gejala18')
def gejala18():
    return render_template('question/gejala18.html')

@app.route('/gejala20')
def gejala20():
    return render_template('question/gejala20.html')



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

