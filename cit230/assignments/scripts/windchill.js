// input - the average temperature from Franklin Data
var t = (90 + 66) / 2;
var s = document yada yada yada
// processing
var f = 35.74 + 0.6215 * t - 35.75 * Math.pow(s,0.16) + 0.4275 t s0.16 
// output
document.getElementById("windchill").innerHTML = f;