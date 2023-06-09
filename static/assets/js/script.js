$(document).ready(function () {
  $('#middle-wizard').load('/questionStart');

  $('.trigger-close').click(function () {
    $('.modal-wrapper').toggleClass('open');
    $('.page-wrapper').toggleClass('blur');
    return false;
  });

  var i = 0;
  var kodeRule = '';
  var kodeRuleAkhir = '';
  var inputData = [];
  var kodeTerakhir = '';
  $('.next').on('click', function () {
    inputData[i] = $('input[name="question"]:checked').val();
    // jika tidak ada inputan
    if (inputData[i] == null) {
      $('.validateError').show();
    } else {
      //  jika inputan == 0
      if (inputData[i].includes('0_')) {
        var kodeAsli = inputData[i].split('_');
        inputData[i] = kodeAsli[1];
        if (inputData[i] == kodeTerakhir) {
          kodeRuleAkhir = kodeRuleAkhir + kodeAsli[0];
          kodeRule = kodeRule + kodeAsli[1];
        } else {
          kodeRuleAkhir = kodeRuleAkhir + kodeAsli[0] + '-';
          kodeRule = kodeRule + kodeAsli[1] + '-';
        }
      } else {
        if (inputData[i] == kodeTerakhir) {
          kodeRuleAkhir = kodeRuleAkhir + inputData[i];
          kodeRule = kodeRule + inputData[i];
        } else if (inputData[i-1] == 'G10' || inputData[i-1] == 'G12' && inputData[i] == 'G18') {
          kodeRuleAkhir = kodeRuleAkhir + inputData[i];
          kodeRule = kodeRule + inputData[i];
          //
          var resultAkhir = kodeRuleAkhir.split('-');
          for (i = 0; i < resultAkhir.length; i++) {
            resultAkhir[i] = resultAkhir[i].replace('G', '');
          }
          sendData(resultAkhir, kodeRuleAkhir);
          return false;
        } else {
          kodeRuleAkhir = kodeRuleAkhir + inputData[i] + '-';
          kodeRule = kodeRule + inputData[i] + '-';
        }
      }
      // ------------------------------------
      if (inputData[i] == kodeTerakhir) {
        // kodeRuleAkhir = kodeRuleAkhir + kodeTerakhir;
        var resultAkhir = kodeRuleAkhir.split('-');
        for (i = 0; i < resultAkhir.length; i++) {
          resultAkhir[i] = resultAkhir[i].replace('G', '');
        }
        sendData(resultAkhir, kodeRuleAkhir);
      } else {
        fetch('/getRule', {
          method: 'POST',
          body: JSON.stringify({
            kodeRule: kodeRule,
          }),
        })
          .then((result) => result.json())
          .then((result) => {
            var res = result.result;
            // jika pertanyaan selanjutnya pilihan ganda
            if (res.length > 1) {
              let listGejalaSelanjutnya = [];
              for (j = 0; j < res.length; j++) {
                var gejalaSelanjutnya = res[j].rule.split('-');
                listGejalaSelanjutnya[j] = gejalaSelanjutnya[i];
              }
              var gejalaSelanjutnya = [...new Set(listGejalaSelanjutnya)];
              var collator = new Intl.Collator(undefined, {
                numeric: true,
                sensitivity: 'base',
              });
              gejalaSelanjutnya.sort(collator.compare);

              var listGejala = [];
              var listKodeGejala = [];
              fetch('/getDeskripsiGejala', {
                method: 'POST',
                body: JSON.stringify({}),
              })
                .then((result) => result.json())
                .then((result) => {
                  var html = '';
                  html += '<div class="step">';
                  html += '<h3 class="main_question">';
                  html += '<i class="arrow_right"></i>';
                  html += 'Pilih satu gejala / kondisi yang kamu alami dari pilihan dibawah :';
                  html += '</h3>';
                  html += '<div class="form-group">';
                  allGejala = result.hasil;
                  for (j = 0; j < gejalaSelanjutnya.length; j++) {
                    for (k = 0; k < allGejala.length; k++) {
                      if (gejalaSelanjutnya[j] == allGejala[k].kode_gejala) {
                        listKodeGejala[j] = allGejala[k].kode_gejala;
                        listGejala[j] = allGejala[k].gejala;

                        if (j == 0) {
                          html += '<label class="container_radio version_2">' + listGejala[j] + '';
                          html += '<input type="radio" name="question" value="' + listKodeGejala[j] + '" class="required question" />';
                          html += '<span for="question" class="error validateError" style="display: none;">Required</span>';
                          html += '<span class="checkmark"></span>';
                          html += '</label>';
                        } else {
                          html += '<label class="container_radio version_2">' + listGejala[j] + '';
                          html += '<input type="radio" name="question" value="' + listKodeGejala[j] + '" class="required question" />';
                          html += '<span class="checkmark"></span>';
                          html += '</label>';
                        }
                      }
                    }
                  }
                  html += '</div>';
                  html += '</div>';
                  $('#middle-wizard').html(html);

                  return;
                });
              console.log(listGejala);
              console.log(listKodeGejala);
            } else {
              var gejalaSelanjutnya = res[0].rule.split('-');
              var kodeGejala = gejalaSelanjutnya[i];
              kodeTerakhir = gejalaSelanjutnya[gejalaSelanjutnya.length - 1];
              if (kodeGejala != '') {
                fetch('/getGejalaSelanjutnya', {
                  method: 'POST',
                  body: JSON.stringify({
                    kodeGejala: kodeGejala,
                  }),
                })
                  .then((result) => result.json())
                  .then((result) => {
                    var html = '';
                    html += '<div class="step">';
                    html += '<h3 class="main_question">';
                    html += '<i class="arrow_right"></i>';
                    html += result.pertanyaan_gejala;
                    html += '</h3>';
                    html += '<div class="form-group">';
                    html += '<label class="container_radio version_2">Ya';
                    html += '<input type="radio" name="question" value="' + result.kode_gejala + '" class="required question" />';
                    html += '<span for="question" class="error validateError" style="display: none;">Required</span>';
                    html += '<span class="checkmark"></span>';
                    html += '</label>';
                    html += '<label class="container_radio version_2">Tidak';
                    html += '<input type="radio" name="question" value="0_' + result.kode_gejala + '" class="required question" />';
                    html += '<span class="checkmark"></span>';
                    html += '</label>';
                    html += '</div>';
                    html += '</div>';
                    $('#middle-wizard').html(html);
                  });
              }
            }
          });
      }
      // console.log(inputData[i]);
      console.log(inputData[i]);
      console.log(resultAkhir);
      console.log(kodeRuleAkhir);
      i++;
    }
    return false;
  });

  function sendData(inputData, kodeRule) {
    fetch('/test', {
      method: 'POST',
      body: JSON.stringify({
        answers: inputData,
      }),
    })
      .then((result) => result.json())
      .then((result) => {
        var res = result.result;
        if (res.length === 0) {
          $('.modal-wrapper').toggleClass('open');
          $('.page-wrapper').toggleClass('blur');
          $('#body').css({ 'overflow-y': 'hidden' });
          $('.output_penyakit').html(
            'Your disease is not detected, please fill all of the answers'
          );
        } else {
          getPenyakit(res, kodeRule);
          $('.modal-wrapper').toggleClass('open');
          $('.page-wrapper').toggleClass('blur');
          $('#body').css({ 'overflow-y': 'hidden' });
        }
      });
  }

  function getPenyakit(kodePenyakit, gejalaPenyakit) {
    var kodePenyakitParsial;
    var kodePenyakitHasil = kodePenyakit[0];
    for (i = 1; i < 11; i++) {
      kodePenyakitHasil = kodePenyakitHasil.replace(i, '');
    }
    if (kodePenyakitHasil.includes('parsial_')) {
      kodePenyakitParsial = 1;
      kodePenyakitHasil = kodePenyakitHasil.replace('parsial_', '');
    } else {
      kodePenyakitParsial = 0;
    }
    console.log(kodePenyakitHasil);

    fetch('/getOutput', {
      method: 'POST',
      body: JSON.stringify({
        kodePenyakitHasil: kodePenyakitHasil,
      }),
    })
      .then((result) => result.json())
      .then((result) => {
        $('.hasil_penyakit').show();
        // tampilkan gejala
        fetch('/getGejalaHasil', {
          method: 'POST',
          body: JSON.stringify({
            kodePenyakitHasil: kodePenyakitHasil,
          }),
        })
          .then((result2) => result2.json())
          .then((result2) => {
            var rule = result2.rule;
            rule = rule.split('-');

            fetch('/getDeskripsiGejala', {
              method: 'POST',
              body: JSON.stringify({
                rule: rule,
              }),
            })
              .then((result) => result.json())
              .then((result) => {
                allGejala = result.hasil;

                gejalaPenyakit = gejalaPenyakit.split('-');
                var gejalaYangDialami = rule.filter(
                  (x) => !gejalaPenyakit.includes(x)
                );
                var gejalaYangTidakDialami = rule.filter((x) =>
                  gejalaPenyakit.includes(x)
                );

                console.log(gejalaYangDialami);
                console.log(gejalaYangTidakDialami);

                var html2 = '';
                for (i = 0; i < gejalaYangTidakDialami.length; i++) {
                  for (j = 0; j < allGejala.length; j++) {
                    if (allGejala[j].kode_gejala == gejalaYangTidakDialami[i]) {
                      html2 += '- ' + allGejala[j].gejala + '<br>';
                    }
                  }
                }

                var html3 = '';
                for (i = 0; i < gejalaYangDialami.length; i++) {
                  for (j = 0; j < allGejala.length; j++) {
                    if (allGejala[j].kode_gejala == gejalaYangDialami[i]) {
                      html3 += '- ' + allGejala[j].gejala + '<br>';
                    }
                  }
                }
                $('.headerGejala').html('Gejala yang dialami : ');
                $('.gejalaPenyakitDialami').html(html2);
                if (html3 !== '') {
                  $('.headerGejala2').html('Gejala yang tidak dialami : ');
                  $('.gejalaPenyakitTidakDialami').html(html3);
                }
                return false;
              });
            return false;
          });

        if (kodePenyakitParsial == 0) {
          // header
          $('.output_penyakit').html( 'Penyakit yang kamu derita adalah ' + result.nama_penyakit);
          // deskripsi
          $('.ringkasan_penyakit').html(result.ringkasan_penyakit);
        } else {
          // header
          var output_penyakit = 'Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah atau bukan merupakan alopecia.';
          $('.output_penyakit').html(output_penyakit);
          // deskripsi
          var ringkasan_penyakit = 'Jenis Alopecia yang kemungkinan kamu alami adalah ' + result.nama_penyakit + '<br><br>' + result.ringkasan_penyakit;
          $('.ringkasan_penyakit').html(ringkasan_penyakit);
        }
        $('.headerPengobatan').html('Cara Pengobatan : ');
        $('.headerPencegahan').html('Cara Pencegahan : ');
        $('.caraPengobatan').html(result.ringkasan2_penyakit);
        $('.caraPencegahan').html(result.ringkasan3_penyakit);
        return false;
      });
    return false;
  }
});
