var arrCorrectAnswers = [];
var arrLifeLines = [];

function init() {
    var numQuizes = 10;
    for (var i = 0; i < numQuizes; i++) {

    }

    var questions = ["h", "haa", "hii", "hoo"];
    var questions = [["hei", "ho", "ho", "ho"], ["hi", "ha", "ho", "ho"], ["ho", "hy", "ho", "ho"], ["hei", "ho", "ho", "ho"]];
    var answers = [1, 2, 3, 1];
}

function lifeLine5050() {
    //find correct alternative
    correct = document.getElementById("hidFldAnswerIndex").value;

    //alternatives
    arr = [1, 2, 3, 4];

    //take out correct alternative
    arr.splice(correct, 1);

    //rearrange and remove first (random) number, two numbers in arr are now random and without correct answer.
    shuffle(arr);
    arr.splice(0, 1);

    //grey out boxes
    document.getElementById("alt" + arr[0] + "Box").classList.add('bg-secondary');
    document.getElementById("alt" + arr[1] + "Box").classList.add('bg-secondary');

    //Disable boxes and lifeline
    document.getElementById("radio-button-" + arr[0]).disabled = true;
    document.getElementById("radio-button-" + arr[1]).disabled = true;
    document.getElementById("lifeLine1").disabled = true;

    correct = document.getElementById("hidFldAnswerIndex").value;
}

function back() {

}

function next() {
    document.getElementById("alt" + arr[0] + "Box").classList.remove('d-none');
}

function openModal(button) {
    if (button.value == 2) {
        var modalTitle = document.getElementById('modalTitle');
        var questionText = document.getElementById('questionText');
        var indexCorrect = document.getElementById('hidFldAnswerIndex').value;
       
        modalTitle.innerHTML = "Lecture 2";
        questionText.innerHTML = "QUESTION";

    }
}

function shuffle(array) {
    var i = array.length,
        j = 0,
        temp;

    while (i--) {

        j = Math.floor(Math.random() * (i + 1));

        // swap randomly chosen element with current element
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;

    }

    return array;
}