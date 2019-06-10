function checkMath() {

    // INITIALIZE
    document.getElementById("output").style.content = "none"; // Clear output div
    var var1 = 0;       // user first variable
    var var2 = 0;       // user second variable
    var answer = 0;     // user answer
    var operator = "";  // user selected operator
    var answerkey = 0;  // answerkey based upon user input variables var1, var2, and operator
    var flag = false;   // result boolean flag for UI purposes

    // INPUT
    var var1 = parseFloat(document.getElementById("var1").value);
    var var2 = parseFloat(document.getElementById("var2").value);
    var operator = document.getElementById("operator").value;
    var answer = parseFloat(document.getElementById("answer").value);

    // PROCESSING
    // Determine answerkey using operator in switch
    switch (operator) {
        case "+":
            answerkey = var1 + var2;
            break;
        case "-":
            answerkey = var1 - var2;
            break;
        case "*":
            answerkey = var1 * var2;
            break;
        case "/":
            answerkey = var1 / var2;
            break;
    }

    // Determine Result
    if (answerkey == answer) {
        message = "That is correct!"
        flag = true;
    }
    else {
        message = "Incorrect! Try Again."
    }
    
    

    // OUTPUT
    // change the background color and text color based upon userWin status
    if (flag) 
        document.getElementById("output").style.backgroundColor = '#eeffee';
    else 
        document.getElementById("output").style.background = '#ffeeee';

    // Output message to output area
    document.getElementById("output").innerHTML = message;
   
}