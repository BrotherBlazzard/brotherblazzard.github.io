function include() {
    let file, xhttp;
    let allElements = document.getElementsByTagName('*');
    for (let i = 0; i < allElements.length; i++) {
      file = allElements[i].getAttribute("include");
      if (file) {
          xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
              if (this.readyState == 4) { // if the operation is complete
                  if (this.status == 200) { allElements[i].innerHTML = "includes/" + this.responseText;} // OK request
                  if (this.status == 400) { allElements[i].innerHTML = "Page not found!";}
                  allElements[i].removeAttribute('include');
                  include(); // call the function again to start the process over after an error was found
              }
          }
          xhttp.open('GET', file, true);
          xhttp.send();
          return; // exit the function
      }
    } 
}