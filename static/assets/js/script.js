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
    let inputData = [];
    var kodeTerakhir = '';
    $(".next").on("click", function () {
        inputData[i] = $('input[name="question"]:checked').val();
        // jika tidak ada inputan
        if (inputData[i] == null) {
            $('.validateError').show();
        } else {
            //  jika inputan == 0
            if (inputData[i].includes("0_")) {
                kodeAsli = inputData[i].split('_');
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
                } else {
                    kodeRuleAkhir = kodeRuleAkhir + inputData[i] + '-';
                    kodeRule = kodeRule + inputData[i] + '-';
                }
            }
            // ------------------------------------
            if (inputData[i] == kodeTerakhir) {
                // kodeRuleAkhir = kodeRuleAkhir + kodeTerakhir;
                var resultAkhir = kodeRuleAkhir.split('-');
                for (let i = 0; i < resultAkhir.length; i++) {
                    resultAkhir[i] = resultAkhir[i].replace("G", "");
                }
                sendData(resultAkhir, kodeRuleAkhir);
            } else {
                fetch("/getRule", {
                    method: "POST",
                    body: JSON.stringify({
                        kodeRule: kodeRule,
                    }),
                })
                    .then((result) => result.json())
                    .then((result) => {
                        res = result.result;
                        // jika pertanyaan selanjutnya pilihan ganda
                        if (res.length > 1) {

                        } else {
                            var gejalaSelanjutnya = res[0].rule.split("-");
                            var kodeGejala = gejalaSelanjutnya[i];
                            kodeTerakhir = gejalaSelanjutnya[gejalaSelanjutnya.length - 1];
                            if (kodeGejala != '') {
                                fetch("/getGejalaSelanjutnya", {
                                    method: "POST",
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
                                return false;
                            }
                        }
                    });
            }
            console.log(kodeRuleAkhir);
            i++;
        }
        return false;
    });

    function sendData(inputData, kodeRule) {
        fetch("/test", {
            method: "POST",
            body: JSON.stringify({
                answers: inputData,
            }),
        })
            .then((result) => result.json())
            .then((result) => {
                res = result.result;
                if (res.length === 0) {
                    $('.modal-wrapper').toggleClass('open');
                    $('.page-wrapper').toggleClass('blur');
                    $('#body').css({ "overflow-y": "hidden" });
                    $('.output_penyakit').html('Your disease is not detected, please fill all of the answers');
                    return;
                } else {
                    getPenyakit(res, kodeRule);
                }

            });
        return false;
    }

    function getPenyakit(kodePenyakit, gejalaPenyakit) {
        fetch("/getOutput", {
            method: "POST",
            body: JSON.stringify({
                kodePenyakit: kodePenyakit,
            }),
        })
            .then((result) => result.json())
            .then((result) => {
                $('.hasil_penyakit').show();
                if (result.is_diagnosis == 0) {
                    $('.header2').html('Cara Pengobatan : ');
                    $('.header3').html('Cara Pencegahan : ');
                    $('.output_penyakit').html(result.output_penyakit);
                    $('.ringkasan_penyakit').html(result.ringkasan_penyakit);
                    $('.ringkasan2_penyakit').html(result.ringkasan2_penyakit);
                    $('.ringkasan3_penyakit').html(result.ringkasan3_penyakit);
                } else {
                    var output_penyakit = result.output_penyakit;
                    var ringkasan_penyakit = result.ringkasan_penyakit;
                    var kodePenyakitHasil = kodePenyakit[0];
                    kodePenyakitHasil = kodePenyakitHasil.replace("parsial_", "");
                    for (let i = 1; i < 11; i++) {
                        kodePenyakitHasil = kodePenyakitHasil.replace(i, "");
                    }
                    console.log(kodePenyakitHasil);
                    fetch("/getGejalaHasil", {
                        method: "POST",
                        body: JSON.stringify({
                            kodePenyakitHasil: kodePenyakitHasil,
                        }),
                    })
                        .then((result) => result.json())
                        .then((result) => {
                            var rule = result.rule;
                            rule = rule.split('-');
                            gejalaPenyakit = gejalaPenyakit.split('-');

                            let gejalaYangTidakDialami = rule.filter(x => !gejalaPenyakit.includes(x));
                            let gejalaYangDialami = rule.filter(x => gejalaPenyakit.includes(x));

                            $('.header2').html('Gejala yang dialami : ');
                            $('.header3').html('Gejala yang tidak dialami : ');
                            $('.output_penyakit').html(output_penyakit);
                            $('.ringkasan_penyakit').html(ringkasan_penyakit);

                            html2 = '';
                            for (let i = 0; i < gejalaYangDialami.length; i++) {
                                kodeGejalaDeskripsi = gejalaYangDialami[i];
                                fetch("/getDeskripsiGejala", {
                                    method: "POST",
                                    body: JSON.stringify({
                                        kodeGejalaDeskripsi: kodeGejalaDeskripsi,
                                    }),
                                })
                                    .then((result) => result.json())
                                    .then((result) => {
                                        deskripsiGejala = result.gejala;
                                        html2 += '- ' + deskripsiGejala + '<br>';
                                        $('.ringkasan2_penyakit').html(html2);
                                    });
                            }

                            html3 = '';
                            for (let i = 0; i < gejalaYangTidakDialami.length; i++) {
                                kodeGejalaDeskripsi = gejalaYangTidakDialami[i];
                                fetch("/getDeskripsiGejala", {
                                    method: "POST",
                                    body: JSON.stringify({
                                        kodeGejalaDeskripsi: kodeGejalaDeskripsi,
                                    }),
                                })
                                    .then((result) => result.json())
                                    .then((result) => {
                                        deskripsiGejala2 = result.gejala;
                                        html3 += '- ' + deskripsiGejala2 + '<br>';
                                        $('.ringkasan3_penyakit').html(html3);
                                    });
                            }
                            return false;
                        });
                }
            });

        $('.modal-wrapper').toggleClass('open');
        $('.page-wrapper').toggleClass('blur');
        $('#body').css({ "overflow-y": "hidden" });
        return false;
    }


});
