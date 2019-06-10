function playGame() {
    
    document.getElementById("output").style.content = "none";

    // Get user input from a combo box (select) and store the value in userChoice
    var userChoice = document.getElementById("userChoice").value;
    if (userChoice == "") {
        return false;
    }

    // Determine computer choice from random number generator (fraction)
    var computerChoice = Math.random(); 
    if (computerChoice < 0.34) {
        computerChoice = "rock";
    }
    else if (computerChoice <= 0.67) {
        computerChoice = "paper";
    }
    else {
        computerChoice = "scissors";
    }


    // Determine winner using a nested selection structure
    var result = "";
    var userWin = 0; // 0 = tie, 1 = win, 2 = lose

    if (computerChoice == userChoice) {
        result = "The result is a tie!";
    }
    else if (computerChoice == "rock") {
        if (userChoice == "scissors") {
            result = "Computer Wins!<br>Rock beats Scissors.";
            userWin = 2;
        }
        else {
            result = "YOU WIN!<br>Paper beats Rock.";
            userWin = 1;
        }
    }
    else if (computerChoice == "paper") {
        if (userChoice == "rock") {
            result = "Computer Wins!<br>Paper beats Rock."
            userWin = 2;
        }
        else {
            result = "YOU WIN!<br>Scissors beat Paper.";
            userWin = 1;
        }
    }
    else if (computerChoice == "scissors") {
        if (userChoice == "paper") {
            result = "Computer Wins!<br>Scissors beat Paper.";
            userWin = 2;
        }
        else {
            result = "YOU WIN!<br>Rock beats Scissors.";
            userWin = 1;
        }
    }

    // Output results
    document.getElementById("output").innerHTML = "Computer selects <strong>" + computerChoice + "</strong>" + ".<br><br>" + result;
    document.getElementById("output").style.display = "block";
    document.getElementById("output").style.textAlign = "center";
    // change the background color and text color based upon userWin status
    if (userWin == 1) {
        document.getElementById("output").style.backgroundColor = "#eeffee";
    }
    else if (userWin == 2) {
        document.getElementById("output").style.backgroundColor = '#ffeeee';
    }
    else {
        document.getElementById("output").style.background = '#fff';
    }
}
