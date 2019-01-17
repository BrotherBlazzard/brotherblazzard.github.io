javascript: (function pageReport() {
  win = window.open();
  doc = win.document;
  var meta = doc.createElement('meta');
    meta.setAttribute('charset', 'utf-8');
  var title = doc.createElement('title');
    title.appendChild(doc.createTextNode('Page Assignment Review'));
  // embedded style
  var style = doc.createElement('style');
    style.appendChild(doc.createTextNode('body { color: blue; } ' + 'div { margin: 10px; border: 1px solid #999; padding: 7px; background-color: #eee;} ' ));
    doc.head.appendChild(meta);
    doc.head.appendChild(title);
    doc.head.appendChild(style);
  
  var heading = doc.createElement('h1');
  heading.appendChild(doc.createTextNode("Student Name"));
  doc.body.appendChild(heading)
  var ul = doc.createElement('ul');
  for (var i = 1; i < 11; ++i) {
    var li = doc.createElement('li');
    ul.appendChild(li);
  }
  doc.body.appendChild(ul);
})