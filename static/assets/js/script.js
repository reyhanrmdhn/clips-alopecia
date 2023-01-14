$(document).ready(function () {
    let inputData = [];
    const disease = document.getElementById("diseaseType");

    $('.trigger-close').click(function () {
        $('.modal-wrapper').toggleClass('open');
        $('.page-wrapper').toggleClass('blur');
        return false;
    });

    $('.start').on("click", function () {
        $('#middle-wizard').load('/questionStart');
        $('.start').hide();
        $('.next').show()
    });

    var i = 0;
    $(".next").on("click", function () {
        inputData[i] = $('input[name="question"]:checked').val();
        if (inputData[i] == null) {
            $('.validateError').show();
        } else {
            if (inputData[0] == 9) {
                if (i == 0) {
                    $('#middle-wizard').load('/gejala17');
                }
                if (i == 1) {
                    $('#middle-wizard').load('/gejala18');
                }
                if (i == 2) {
                    $('#middle-wizard').load('/gejala20');
                }
                if (i == 3) {
                    sendData(inputData);
                }
            }
            i++;
        }

    });

    // $('input[name="question"]').change(function () {
    //     $(".validateError").hide();
    // });

    function sendData(inputData) {
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
                    disease.innerHTML = `<p>Your disease is not detected, please fill all of the answers</p>`;
                    return;
                } else {
                    getPenyakit(res);
                }

            });
        return false;
    }

    function getPenyakit(kodePenyakit) {
        fetch("/getOutput", {
            method: "POST",
            body: JSON.stringify({
                kodePenyakit: kodePenyakit,
            }),
        })
            .then((result) => result.json())
            .then((result) => {
                if (result.is_diagnosis == 0) {
                    $('.header2').html('Cara Pengobatan : ');
                    $('.header3').html('Cara Pencegahan : ');
                    $('.output_penyakit').html(result.output_penyakit);
                    $('.ringkasan_penyakit').html(result.ringkasan_penyakit);
                    $('.ringkasan2_penyakit').html(result.ringkasan2_penyakit);
                    $('.ringkasan3_penyakit').html(result.ringkasan3_penyakit);
                } else {
                    $('.header2').html('Gejala yang dialami : ');
                    $('.header3').html('Gejala yang tidak dialami : ');
                    $('.output_penyakit').html(result.output_penyakit);
                    $('.ringkasan_penyakit').html(result.ringkasan_penyakit);
                    var ringkasan2_penyakit = result.ringkasan2_penyakit.split(";");
                    var ringkasan3_penyakit = result.ringkasan3_penyakit.split(";");
                    ringkasan2_penyakit = ringkasan2_penyakit.filter(item => item);
                    ringkasan3_penyakit = ringkasan3_penyakit.filter(item => item);
                    html2 = '';
                    html3 = '';
                    if (ringkasan2_penyakit.length > 1) {
                        for (i = 0; i < ringkasan2_penyakit.length; i++) {
                            html2 += '- ' + ringkasan2_penyakit[i] + '<br>';
                        }
                    } else {
                        html2 = '- ' + ringkasan2_penyakit + '<br>'
                    }

                    if (ringkasan3_penyakit.length > 1) {
                        for (i = 0; i < ringkasan3_penyakit.length; i++) {
                            html3 += '- ' + ringkasan3_penyakit[i] + '<br>';
                        }
                    } else {
                        html3 = '- ' + ringkasan3_penyakit + '<br>'
                    }

                    $('.ringkasan2_penyakit').html(html2);
                    $('.ringkasan3_penyakit').html(html3);
                }
                $('.modal-wrapper').toggleClass('open');
                $('.page-wrapper').toggleClass('blur');
                $('#body').css({ "overflow-y": "hidden" });
            });
        return false;
    }


});
