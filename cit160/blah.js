let x = 1, y = 7;
let message = "Welcome";
if (x < 2) {
    if (y > 10) {
        message = "Hello";
    }
    else {
        message = "Goodbye";
    }
}
document.getElementById('output').innerHTML = message;