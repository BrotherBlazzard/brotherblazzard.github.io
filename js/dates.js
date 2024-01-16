let d = new Date(); // Create an instance of the date object with no parameter
document.getElementById('lastmod').textContent = document.lastModified;

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

document.getElementById("currentTerm").textContent = `${term} ${d.getFullYear()}`;


// get current MTN time
const timezone = "America/Denver"; // Mountain Time Zone
// const mountaintime = d.toLocaleTimeString('en-US', { timeZone: timezone });
const mtntimeintl = d.toLocaleTimeString('en-GB', { timeZone: timezone });
document.getElementById('currentDate').textContent = `Current Mountain | UTC-7 Time: ${mtntimeintl}`;