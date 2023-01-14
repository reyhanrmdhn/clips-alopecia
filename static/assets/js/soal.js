$(document).ready(function () {
    let inputData = [];
    const disease = document.getElementById("diseaseType");

    $('.start').on("click", function () {
        $('#middle-wizard').load('/questionStart');
        $('.start').hide();
        $('.next').show();
    });

    var i = 0;
    $(".next").on("click", function () {
        inputData[i] = $('input[name="question"]:checked').val();
        if (inputData[i] == null) {
            $('.validateError').show();
        } else {
            if (i == 0) {
                if (inputData[i] == 9) {
                    $('#middle-wizard').load('/gejala17');
                }
            }
            if (i == 1) {
                if (inputData[i] == 17) {
                    $('#middle-wizard').load('/gejala18');
                }
            }
            if (i == 2) {
                if (inputData[i] == 18) {
                    $('#middle-wizard').load('/gejala20');
                }
            }
            if (i == 3) {
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
                        }

                        disease.innerHTML = `You are ${res}`;
                        ;
                    });
            }
            i++;
        }
        console.log(inputData);

    });

    if ($('.question').prop("checked", true)) {
        $(".validateError").hide();
    }


});
