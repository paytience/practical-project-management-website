var arrChoices = [[[]]];
var arrLifeLines1 = [[[]]];
var arrLifeLines2 = [[]];
var arrCorrectAnswers = [[[]]];

var quizes;
var results;
var modalTitle;
var questionText;
var quiz;
var question;
var hint;
var alternatives;

var btnBack;
var btnNext;
var btnSubmit;

var ind;
var quizInd;
var questionInd;

var alts;
var altRadios;
var altRadioBoxes;

function lifeLineHint() { 
    document.getElementById("hint").innerHTML = hint;
    $('#hint').fadeIn();
    //Save LifeLine use
    arrLifeLines2[ind][questionInd] = "1";


    //Disable lifeline
    document.getElementById("lifeLine2").disabled = true;
}

function lifeLine5050() {
    for (var i = 0; i < 4; i++) {
        altRadios[i].checked = false;
    }

    //find correct alternative
    correctInd = arrCorrectAnswers[ind][questionInd].indexOf('1');

    //alternatives
    arr = [1, 2, 3, 4];

    //take out correct alternative
    arr.splice(correctInd, 1);

    //rearrange and remove first (random) number, two numbers in arr are now random and without correct answer.
    shuffle(arr);
    arr.splice(0, 1);

    //Save LifeLine use
    arrLifeLines1[ind][questionInd][arr[0] - 1] = "1";
    arrLifeLines1[ind][questionInd][arr[1] - 1] = "1";

    //grey out boxes
    altRadioBoxes[arr[0] - 1].classList.add('bg-secondary');
    altRadioBoxes[arr[1] - 1].classList.add('bg-secondary');

    //Disable boxes and lifeline
    altRadios[arr[0] - 1].disabled = true;
    altRadios[arr[1] - 1].disabled = true;
    document.getElementById("lifeLine1").disabled = true;
}

function altCheck(button) {
   // console.log(" ind: " + ind.toString() + " questionInd: " + questionInd.toString() + " buttonvalue: " + (button.value).toString());
    arrChoices[ind][questionInd][button.value - 1] = "1";
    for (var i = 0; i < 4; i++) {
        if (i != button.value - 1) {
            arrChoices[ind][questionInd][i] = "0";
        }
    }
    //console.log("Choices:");
    //console.log(arrChoices);
    //console.log("Lifelines:");
    //console.log(arrLifeLines);
    //console.log("Correct answers:");
    //console.log(arrCorrectAnswers);
}

function back() {
    questionInd--;
    $('#alertDiv').hide();
    $('#hint').hide();

    fillModal(ind);

    btnNext.classList.remove('d-none');
    btnSubmit.classList.add('d-none');
    txtName.classList.add('d-none');

    if (questionInd == 0) {
        btnBack.classList.add('d-none');
    }
}

function next() {
    var chk1 = altRadios[0].checked;
    var chk2 = altRadios[1].checked;
    var chk3 = altRadios[2].checked;
    var chk4 = altRadios[3].checked;
    if (chk1 | chk2 | chk3 | chk4) {
        $('#hint').hide();
        $('#alertDiv').hide();
        questionInd++;

        fillModal(ind);

        btnBack.classList.remove('d-none');
        if (questionInd == quizes[ind].Questions.length - 1) {
            btnNext.classList.add('d-none');
        }
        if (questionInd == quizes[ind].Questions.length - 1) {
            btnSubmit.classList.remove('d-none');
            txtName.classList.remove('d-none');
        }
    }
    else {
        $('#alertDiv').fadeIn();
    }
}

function submit() {
    var chk1 = altRadios[0].checked;
    var chk2 = altRadios[1].checked;
    var chk3 = altRadios[2].checked;
    var chk4 = altRadios[3].checked;
    var correct = 0;
    var incorrect = 0;
    for (var i = 0; i < arrChoices[ind].length; i++) {
        console.log(arrChoices[ind][i].indexOf("1"));
        console.log(arrCorrectAnswers[ind][i].indexOf("1"));
        if (arrChoices[ind][i].indexOf("1") == arrCorrectAnswers[ind][i].indexOf("1")) {
            correct += 1;
        } else {
            incorrect += 1;
        }
        console.log("correct " + correct);
        console.log("incorrect " + incorrect);
    }
    if (chk1 | chk2 | chk3 | chk4) {
        if (txtName.value != null && txtName.value.trim() !== '') {
            $.ajax({
                type: "POST",
                url: "WebForm1.aspx/AddName",
                data: "{name: '" + txtName.value.toString() + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                },
                complete: function (msg) {
                    $.ajax({
                        type: "POST",
                        url: "WebForm1.aspx/AddResult",
                        data: "{quizIndex : '" + quizInd + "',correct: '" + correct.toString() + "',incorrect: '" + incorrect.toString() + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                        },
                        complete: function (msg) {
                            $.ajax({
                                type: "POST",
                                url: "WebForm1.aspx/GetScores",
                                data: "{quizIndex : '" + quizInd + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    results = msg.d;
                                    $('#table1').bootstrapTable({
                                        data: results
                                    });
                                    $('#table1').bootstrapTable('load', results);
                                },
                                complete: function () {
                                    $('#LeaderBoardModal').modal('show');
                                    $('#LectureModal').modal('hide');
                                    document.getElementById('questionText2').innerHTML = quizes[ind].QuizName;
                                }
                            });
                        }
                    });
                }
            });
        }
    } else {
        $('#alertDiv').fadeIn();
    }
}

function refreshLeaderboard() {
    $.ajax({
        type: "POST",
        url: "WebForm1.aspx/GetScores",
        data: "{quizIndex : '" + quizInd + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            results = msg.d;
            $('#table1').bootstrapTable({
                data: results
            });
            $('#table1').bootstrapTable('load', results);
        },
        complete: function () {
            $('#table1').bootstrapTable('load', results);
        }
    });
}

function resetModal() {
    document.getElementById("lifeLine1").disabled = true;
    document.getElementById("lifeLine2").disabled = true;
    $('#hint').hide();

    //start on question 1.
    questionInd = 0;

    //reset alternative boxes.
    for (var i = 0; i < 4; i++) {
        altRadioBoxes[i].classList.remove('bg-secondary');
        altRadios[i].disabled = false;
        altRadios[i].checked = false;
    }

    //Hide back button
    btnBack.classList.add('d-none');
    txtName.classList.add('d-none');

    // show or hide Next and Submit buttons.
    if (questionInd == quizes[ind].Questions.length - 1) {
        btnSubmit.classList.remove('d-none');
        btnNext.classList.add('d-none');
    }
    else {
        btnSubmit.classList.add('d-none');
        btnNext.classList.remove('d-none');
    }
}

function fillModal() {
    alternative = quizes[ind].Questions[questionInd].Alternatives;
    hint = quizes[ind].Questions[questionInd].Hint;

    //Fill alternatives with text
    alts[0].innerHTML = alternative[0].AlternativeText;
    alts[1].innerHTML = alternative[1].AlternativeText;
    alts[2].innerHTML = alternative[2].AlternativeText;
    alts[3].innerHTML = alternative[3].AlternativeText;

    modalTitle.innerHTML = quizes[ind].QuizName;
    questionText.innerHTML = quizes[ind].Questions[questionInd].QuestionText;


    for (var i = 0; i < 4; i++) {
        if (arrChoices[ind][questionInd][i] == "1") {
            altRadios[arrChoices[ind][questionInd].indexOf("1")].checked = true;
        }
        else {
            altRadios[i].checked = false;
        }
    }

    for (var i = 0; i < 4; i++) {
        if (arrLifeLines1[ind][questionInd][i] == "1") {
            //grey out boxes
            altRadioBoxes[i].classList.add('bg-secondary');

            //Disable boxes and lifeline
            altRadios[i].disabled = true;
        }
        else {
            altRadioBoxes[i].classList.remove('bg-secondary');
            altRadios[i].disabled = false;
        }
    }

    if (arrLifeLines2[ind][questionInd] == "1") {
        lifeLineHint();
    }
}

function checkLifeLine() {
    if (exists(arrLifeLines1[ind], '1')) {
        document.getElementById("lifeLine1").disabled = true;
    } else {
        document.getElementById("lifeLine1").disabled = false;
    }
    if (exists(arrLifeLines2[ind], '1')) {
        document.getElementById("lifeLine2").disabled = true;
    } else {
        document.getElementById("lifeLine2").disabled = false;
    }
}

//check if string exists in 2d array
function exists(arr, search) {
    return arr.some(row => row.includes(search));
}

function openModal(button) {
    ind = button.value;
    resetModal();
    checkLifeLine();
    fillModal();
    quizInd = quizes[ind].QuizId;
}

function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
        let j = Math.floor(Math.random() * (i + 1)); // random index from 0 to i

        // swap elements array[i] and array[j]
        // we use "destructuring assignment" syntax to achieve that
        // you'll find more details about that syntax in later chapters
        // same can be written as:
        // let t = array[i]; array[i] = array[j]; array[j] = t
        [array[i], array[j]] = [array[j], array[i]];
    }
}

function back2() {
    var resultAltRadioBoxes = [document.getElementById("alt1ResultBox"), document.getElementById("alt2ResultBox"), document.getElementById("alt3ResultBox"), document.getElementById("alt4ResultBox")];
    var resultAltRadios = [document.getElementById("radio-button-1result"), document.getElementById("radio-button-2result"), document.getElementById("radio-button-3result"), document.getElementById("radio-button-4result")];
    var altResults = [document.getElementById("altResult1"), document.getElementById("altResult2"), document.getElementById("altResult3"), document.getElementById("altResult4")];
    var btnResultBack = document.getElementById('btnResultBack');
    var btnResultNext = document.getElementById('btnResultNext');
    var modalTitle3 = document.getElementById('modalTitle3');
    var questionText3 = document.getElementById('questionText3');

    questionInd--;

    alternative = quizes[ind].Questions[questionInd].Alternatives;
    //Fill alternatives with text
    altResults[0].innerHTML = alternative[0].AlternativeText;
    altResults[1].innerHTML = alternative[1].AlternativeText;
    altResults[2].innerHTML = alternative[2].AlternativeText;
    altResults[3].innerHTML = alternative[3].AlternativeText;

    modalTitle3.innerHTML = quizes[ind].QuizName;
    questionText3.innerHTML = quizes[ind].Questions[questionInd].QuestionText;

    for (var i = 0; i < 4; i++) {
        if (arrChoices[ind][questionInd][i] == "1") {
            resultAltRadios[arrChoices[ind][questionInd].indexOf("1")].checked = true;
            resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.add('bg-success');
        }
        else {
            resultAltRadios[i].checked = false;
        }
    }

    for (var i = 0; i < 4; i++) {
        resultAltRadios[i].disabled = true;
        resultAltRadioBoxes[i].disabled = true;
    }

    btnResultNext.classList.remove('d-none');

    if (questionInd == 0) {
        btnResultBack.classList.add('d-none');
    }

    for (var i = 0; i < 4; i++) {
        resultAltRadioBoxes[i].classList.remove('bg-success');
        resultAltRadioBoxes[i].classList.remove('bg-danger');
    }
    resultAltRadios[arrChoices[ind][questionInd].indexOf("1")].checked = true;
    resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.add('bg-danger');
    resultAltRadioBoxes[arrCorrectAnswers[ind][questionInd].indexOf("1")].classList.add('bg-success');
    if (arrChoices[ind][questionInd].indexOf("1") == arrCorrectAnswers[ind][questionInd].indexOf("1")) {
        resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.remove('bg-danger');
    }
}

function next2() {
    var resultAltRadioBoxes = [document.getElementById("alt1ResultBox"), document.getElementById("alt2ResultBox"), document.getElementById("alt3ResultBox"), document.getElementById("alt4ResultBox")];
    var resultAltRadios = [document.getElementById("radio-button-1result"), document.getElementById("radio-button-2result"), document.getElementById("radio-button-3result"), document.getElementById("radio-button-4result")];
    var altResults = [document.getElementById("altResult1"), document.getElementById("altResult2"), document.getElementById("altResult3"), document.getElementById("altResult4")];
    var btnResultBack = document.getElementById('btnResultBack');
    var btnResultNext = document.getElementById('btnResultNext');
    var modalTitle3 = document.getElementById('modalTitle3');
    var questionText3 = document.getElementById('questionText3');

    questionInd++;

    alternative = quizes[ind].Questions[questionInd].Alternatives;
    //Fill alternatives with text
    altResults[0].innerHTML = alternative[0].AlternativeText;
    altResults[1].innerHTML = alternative[1].AlternativeText;
    altResults[2].innerHTML = alternative[2].AlternativeText;
    altResults[3].innerHTML = alternative[3].AlternativeText;

    modalTitle3.innerHTML = quizes[ind].QuizName;
    questionText3.innerHTML = quizes[ind].Questions[questionInd].QuestionText;

    for (var i = 0; i < 4; i++) {
        resultAltRadioBoxes[i].classList.remove('bg-success');
        resultAltRadioBoxes[i].classList.remove('bg-danger');
    }
    resultAltRadios[arrChoices[ind][questionInd].indexOf("1")].checked = true;
    resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.add('bg-danger');
    resultAltRadioBoxes[arrCorrectAnswers[ind][questionInd].indexOf("1")].classList.add('bg-success');
    if (arrChoices[ind][questionInd].indexOf("1") == arrCorrectAnswers[ind][questionInd].indexOf("1")) {
        resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.remove('bg-danger');
    }

    for (var i = 0; i < 4; i++) {
        resultAltRadios[i].disabled = true;
        resultAltRadioBoxes[i].disabled = true;

    }

    btnResultBack.classList.remove('d-none');
    if (questionInd == quizes[ind].Questions.length - 1) {
        btnResultNext.classList.add('d-none');
    }
}

function openResultsModal() {
    //start on question 1.
    questionInd = 0;
    var resultAltRadioBoxes = [document.getElementById("alt1ResultBox"), document.getElementById("alt2ResultBox"), document.getElementById("alt3ResultBox"), document.getElementById("alt4ResultBox")];
    var resultAltRadios = [document.getElementById("radio-button-1result"), document.getElementById("radio-button-2result"), document.getElementById("radio-button-3result"), document.getElementById("radio-button-4result")];
    var altResults = [document.getElementById("altResult1"), document.getElementById("altResult2"), document.getElementById("altResult3"), document.getElementById("altResult4")];
    var btnResultBack = document.getElementById('btnResultBack');
    var btnResultNext = document.getElementById('btnResultNext');
    var modalTitle3 = document.getElementById('modalTitle3');
    var questionText3 = document.getElementById('questionText3');

    //reset alternative boxes.
    for (var i = 0; i < 4; i++) {
        resultAltRadioBoxes[i].classList.remove('bg-secondary');
        resultAltRadios[i].disabled = false;
        resultAltRadios[i].checked = false;
    }

    //Hide back button
    btnResultBack.classList.add('d-none');

    // show or hide Next and Submit buttons.
    if (questionInd == quizes[ind].Questions.length - 1) {
        btnResultNext.classList.add('d-none');
    }
    else {
        btnResultNext.classList.remove('d-none');
    }

    //Fill alternatives with text
    alternative = quizes[ind].Questions[questionInd].Alternatives
    altResults[0].innerHTML = alternative[0].AlternativeText;
    altResults[1].innerHTML = alternative[1].AlternativeText;
    altResults[2].innerHTML = alternative[2].AlternativeText;
    altResults[3].innerHTML = alternative[3].AlternativeText;

    modalTitle3.innerHTML = quizes[ind].QuizName;
    questionText3.innerHTML = quizes[ind].Questions[questionInd].QuestionText;

    for (var i = 0; i < 4; i++) {
        if (arrChoices[ind][questionInd][i] == "1") {
            resultAltRadios[arrChoices[ind][questionInd].indexOf("1")].checked = true;
            resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.add('bg-success');
        }
        else {
            resultAltRadios[i].checked = false;
        }
    }

    for (var i = 0; i < 4; i++) {
        resultAltRadios[i].disabled = true;
        resultAltRadioBoxes[i].disabled = true;
    }
    for (var i = 0; i < 4; i++) {
        resultAltRadioBoxes[i].classList.remove('bg-success');
        resultAltRadioBoxes[i].classList.remove('bg-danger');
    }
    resultAltRadios[arrChoices[ind][questionInd].indexOf("1")].checked = true;
    resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.add('bg-danger');
    resultAltRadioBoxes[arrCorrectAnswers[ind][questionInd].indexOf("1")].classList.add('bg-success');
    if (arrChoices[ind][questionInd].indexOf("1") == arrCorrectAnswers[ind][questionInd].indexOf("1")) {
        resultAltRadioBoxes[arrChoices[ind][questionInd].indexOf("1")].classList.remove('bg-danger');
    }
    $('#ResultModal').on('hidden.bs.modal', function () {
        for (var i = 0; i < quizes.length; i++) {
            arrChoices[i] = [];
            arrLifeLines1[i] = [];
            arrLifeLines2[i] = [];
            for (var j = 0; j < quizes[i].Questions.length; j++) {
                arrChoices[i][j] = [];
                arrLifeLines1[i][j] = [];
                arrLifeLines2[i][j] = "0";
                for (var k = 0; k < quizes[i].Questions[j].Alternatives.length; k++) {
                    arrChoices[i][j][k] = "0";
                    arrLifeLines1[i][j][k] = "0";
                }
            }
        }
    });

    $('#LeaderBoardModal').modal('hide');
    $('#ResultModal').modal('show');
}

function init() {
    $.ajax({
        type: "POST",
        url: "WebForm1.aspx/GetQuizes",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            quizes = msg.d;
            //console.log(msg.d);

            //fill Lecture dropdown menu
            for (var i = 0; i < msg.d.length; i++) {
                var dropDownItemId = "dropdown" + (i + 1).toString();
                var dropDownItemText = msg.d[i].QuizName;
                var dropDownItem = document.getElementById(dropDownItemId);
                dropDownItem.innerHTML = dropDownItemText;
                dropDownItem.style.display = 'block';
            }

            //Create and fill 3d arrays with "0", and 'correct answer array' with "1"s.
            for (var i = 0; i < quizes.length; i++) {
                arrChoices[i] = [];
                arrCorrectAnswers[i] = [];
                arrLifeLines1[i] = [];
                arrLifeLines2[i] = [];
                for (var j = 0; j < quizes[i].Questions.length; j++) {
                    arrChoices[i][j] = [];
                    arrCorrectAnswers[i][j] = [];
                    arrLifeLines1[i][j] = [];
                    arrLifeLines2[i][j] = "0";
                    for (var k = 0; k < quizes[i].Questions[j].Alternatives.length; k++) {
                        arrChoices[i][j][k] = "0";
                        if (quizes[i].Questions[j].Alternatives[k].Correct == "True") {
                            arrCorrectAnswers[i][j][k] = "1";
                        }
                        else
                        {
                            arrCorrectAnswers[i][j][k] = "0";
                        }
                        arrLifeLines1[i][j][k] = "0";
                    }
                }
            }

            //get page elements
            modalTitle = document.getElementById('modalTitle');
            questionText = document.getElementById('questionText');
            btnBack = document.getElementById('btnBack');
            btnNext = document.getElementById('btnNext');
            btnSubmit = document.getElementById('btnSubmit');
            txtName = document.getElementById('txtName');
            alts = [document.getElementById("alt1"), document.getElementById("alt2"), document.getElementById("alt3"), document.getElementById("alt4")];
            altRadios = [document.getElementById("radio-button-1"), document.getElementById("radio-button-2"), document.getElementById("radio-button-3"), document.getElementById("radio-button-4")];
            altRadioBoxes = [document.getElementById("alt1Box"), document.getElementById("alt2Box"), document.getElementById("alt3Box"), document.getElementById("alt4Box")];
        }
    });
}