let d = new Date(); // Create an instance of the date object with no parameter

//#region CreateLongDayOfTheWeekNames Array
let weekday = new Array(7);
weekday[0] = "Sunday";
weekday[1] = "Monday";
weekday[2] = "Tuesday";
weekday[3] = "Wednesday";
weekday[4] = "Thursday";
weekday[5] = "Friday";
weekday[6] = "Saturday";
//#endregion

//#region CreateLongMonthNames Array
let month = new Array(12);
month[0] = "January";
month[1] = "February";
month[2] = "March";
month[3] = "April";
month[4] = "May";
month[5] = "June";
month[6] = "July";
month[7] = "August";
month[8] = "September";
month[9] = "October";
month[10] = "November";
month[11] = "December";
//#endregion

document.getElementById("currentDate").textContent = `Today is ${
  weekday[d.getDay()]
}, ${d.getDate()} ${month[d.getMonth()]} ${d.getFullYear()}`;
document.getElementById("lastmod").textContent = document.lastModified;

//#region Using toLocaleDateString method
// try {
//   let options = {weekday: 'long', month: 'long', day:'numeric', year: 'numeric'};
//   document.getElementById('currentDate2').textContent = new Date().toLocaleDateString('en-US', options);
// } catch (e) {
//   alert('Error with code or your browser does not support Locale');
// }
//#endregion

// current terms
let term = "";
switch (d.getMonth()) {
  case 0:
  case 1:
  case 2:
    term = "Winter";
    break;
  case 3:
  case 4:
  case 5:
  case 6:
    term = "Spring";
    break;
  case 7:
    term = "Summer";
    break;
  case 8:
  case 9:
  case 10:
  case 11:
    term = "Fall";
    break;
}
document.getElementById(
  "currentTerm"
).textContent = `${term} ${d.getFullYear()}`;
