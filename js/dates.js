// output elements
const lastmod = document.getElementById('lastmod'); // last modified date
const currentTerm = document.getElementById('currentTerm'); // current term
const currentDate = document.getElementById('currentDate'); // current date and time


let d = new Date(); // Create an instance of the date object with no parameter
lastmod.textContent = `Last Update: ${ document.lastModified }`; // last modified date
// get current term - BYU-Idaho
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
currentDate.innerHTML = `Mountain Time: ${mtntimeintl}`;

// get current UTC-0 time 
const utc0time = d.toLocaleTimeString('en-GB', { timeZone: 'UTC' });
currentDate.innerHTML += `<br>UTC-0: ${utc0time}`;