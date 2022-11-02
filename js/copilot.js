function calculateDaysBetweenDates(begin, end) {
    var beginDate = new Date(begin);
    var endDate = new Date(end);
    var days = (endDate - beginDate) / 1000 / 60 / 60 / 24;
    return days;
}

function connectToFirebase() {
    var config = {
        apiKey: "AIzaSyCqYqk3r7w8T4j6pZl6h3q4XZ1q4Dd6k2U",
        authDomain: "copilot-6b0c6.firebaseapp.com",
        databaseURL: "https://copilot-6b0c6.firebaseio.com",
        projectId: "copilot-6b0c6",
        storageBucket: "copilot-6b0c6.appspot.com",
        messagingSenderId: "1072395669795"
    };
    firebase.initializeApp(config);
}

function getAverage(array) {
    var total = 0;
    for (var i = 0; i < array.length; i++) {
        total += array[i];
    }
    return total / array.length;
}

function getAverageMileage() {
    var averageMileage = getAverage(mileageArray);
    return averageMileage;
}