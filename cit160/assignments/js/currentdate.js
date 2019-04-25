let today = new Date();
let date = today.getMonth()+1 + '/' + today.getDate() + '/' + today.getFullYear();
document.getElementById('currentdate').innerHTML = date;