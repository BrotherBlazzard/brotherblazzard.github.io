javascript: (function makeReadableSCORMReports() {
  var win, doc, textarea;

  /** Returns true if an element has a given class. */
  function hasClass(elem, clss) {
    var has = false;
    var classes = elem.getAttribute('class');
    if (classes) {
      has = classes.split(' ').indexOf(clss) != -1;
    }
    return has;
  }

  function isNameRow(tr) {
    return hasClass(tr, 'd_ggl1');
  }

  /** Copies text to the O.S. clipboard by placing the text in a * textarea, selecting the text, and executing the copy command. */
  function toClipboard(text) {
    if (!textarea) {
      textarea = doc.createElement('textarea');
      textarea.setAttribute('rows', 24);
      textarea.setAttribute('cols', 80);
      doc.body.appendChild(textarea);
    }
    textarea.value = text;
    textarea.select();
    doc.execCommand('copy');
  }

  /** Counts and returns the number of lines of text in a string. */
  function countLines(s) {
    var n = 0;
    for (var i = 0, len = s.length; i < len; ++i) {
      if (s[i] === '\n') {
        ++n;
      }
    }
    if (len > 0 && s[len - 1] !== '\n') {
      ++n;
    }
    return n;
  }

  function renderCode(key, value) {
    var div = doc.createElement('div');
    if (key) {
      div.appendChild(doc.createTextNode(key.toString() + ' : '));
    }
    if (value.length > 0) {
      var button = doc.createElement('button');
      button.setAttribute('type', 'button');
      button.appendChild(doc.createTextNode('Copy'));
      button.onclick = function () {
        toClipboard(value);
      };
      var numbers = '';
      for (var i = 1, n = countLines(value); i <= n; ++i) {
        numbers += i + '\n';
      }
      var lines = doc.createElement('pre');
      lines.setAttribute('class', 'linenum');
      lines.appendChild(doc.createTextNode(numbers));
      var code = doc.createElement('pre');
      code.appendChild(doc.createTextNode(value));
      var main = doc.createElement('div');
      main.setAttribute('class', 'code');
      main.appendChild(lines);
      main.appendChild(code);
      div.appendChild(button);
      div.appendChild(main);
    }
    return div;
  }

  function renderHTML(key, value) {
    var div = doc.createElement('div');
    if (key) {
      div.appendChild(doc.createTextNode(key.toString() + ' : '));
    }
    div.innerHTML += value.toString();
    return div;
  }

  function renderSimple(key, value) {
    var text = (key ? key.toString() + ' : ' : '') + value.toString();
    return doc.createTextNode(text);
  }

  function renderEmpty() {
    return doc.createTextNode('');
  }
  
  var attrRenders = {
    'code': renderCode,
    'review': renderHTML,
    'score': renderSimple,
    'possible': renderSimple
  };

  function renderArray(key, arr) {
    var ol = doc.createElement('ol');
    ol.setAttribute('start', 0);
    for (var i = 0, len = arr.length; i < len; ++i) {
      var li = doc.createElement('li');
      var elem = arr[i];
      var render = chooseRender(elem);
      li.appendChild(render.call(this, null, elem));
      ol.appendChild(li);
    }
    var div = doc.createElement('div');
    if (key) {
      div.appendChild(doc.createTextNode(key.toString() + ' : '));
    }
    div.appendChild(ol);
    return div;
  }

  function renderObject(key, obj) {
    var div = doc.createElement('div');
    if (key) {
      div.appendChild(doc.createTextNode(key.toString() + ' : '));
    }
    var ul = doc.createElement('ul');
    for (var key in obj) {
      var value = obj[key];
      var render = attrRenders[key];
      if (!render) {
        render = chooseRender(value);
      }
      var li = doc.createElement('li');
      li.appendChild(render.call(this, key, value));
      ul.appendChild(li);
    }
    div.appendChild(ul);
    return div;
  }

  function chooseRender(data) {
    var render;
    if (data != null) {
      render = Array.isArray(data) ? renderArray : (typeof (data) === 'object' ? renderObject : renderSimple);
    } else {
      render = renderEmpty;
    }
    return render;
  } 
  
  
  /* Parse the SCORM Reports into an array of student objects. This * piece of code is highly dependent on the layout of the unreadable * BrightSpace SCORM reports. If D2L changes the layout of the * report, this piece of code will have to change. */ /*var table = document.getElementById('z_q');*/
  var table = document.getElementsByClassName('d2l-grid d_gd');
  table = table[0];
  var rows = table.querySelectorAll('tr');
  var students = [];
  var student;
  for (var i = 0; i < rows.length; ++i) {
    var tr = rows[i];
    if (isNameRow(tr)) {
      var td = tr.querySelectorAll('td')[1];
      var text = td.innerHTML;
      var id, family, given;
      var match = /\(Id: [^)]+\)/i.exec(text);
      if (match) {
        id = match[0];
        var name = text.substring(0, match.index).trim();
        var space = name.lastIndexOf(' ');
        family = name.substring(space + 1);
        given = name.substring(0, space);
      } else {
        id = '';
        family = text;
        given = '';
      }
      student = {
        'id': id,
        'family': family,
        'given': given,
        'attempts': []
      };
      students.push(student);
    } else if (student) {
      var td = tr.querySelectorAll('td')[5];
      if (td) {
        var label = td.querySelector('label');
        if (label) {
          var text = label.textContent; /* The BrightSpace SCORM Report web page has several * bugs. Incredibly, it removes the last character * of the learn_response, so we try to replace the * last character here. */
          var first = text[0];
          text += first == '{' ? '}' : (first == '[' ? ']' : (first == '"' ? '"' : '')); /* In addition to losing the last character, the * BrightSpace SCORM Report web page replaces some of * the double quotes (") in a JSON object with the * literal text "& quot;". No kidding, it puts a space * after the ampersand (&). Unbelievable. Doesn't * anyone at D2L test their code. */
          text = text.replace(/\& quot;/g, '"');
          student.attempts.push(text);
        }
      }
    }
  } 
  
  /* Sort the student objects. */
  students.sort(function (s1, s2) {
    return s1.family < s2.family ? -1 : (s1.family > s2.family ? 1 : (s1.given < s2.given ? -1 : (s1.given > s2.given ? 1 : 0)));
  });
  
  /* Place the student objects in a new window. */
  win = window.open();
  doc = win.document;
  var meta = doc.createElement('meta');
  meta.setAttribute('charset', 'utf-8');
  var title = doc.createElement('title');
  title.appendChild(doc.createTextNode('SCORM Report'));
  var style = doc.createElement('style');
  style.type = 'text/css';
  style.appendChild(doc.createTextNode('body { font-family: Verdana,Arial,sans-serif; } ' + 'div.code > pre { display: table-cell; padding-left: 0.5em; } ' + 'div.code > pre.linenum {' + '  padding: 0 0.5em 0 0; border-right: 1px solid;' + '  text-align: right;' + '}'));
  doc.head.appendChild(meta);
  doc.head.appendChild(title);
  doc.head.appendChild(style);
  for (var i = 0; i < students.length; ++i) {
    var s = students[i];
    var atts = s.attempts;
    if (atts.length > 0) {
      var label = s.family + ', ' + s.given + ' ' + s.id;
      var h3 = doc.createElement('h3');
      h3.appendChild(doc.createTextNode(label));
      var ol = doc.createElement('ol');
      for (var a = 0; a < atts.length; ++a) {
        var li = doc.createElement('li');
        var label = 'Attempt #' + (a + 1);
        try {
          var data = JSON.parse(atts[a]);
          var render = chooseRender(data);
          li.appendChild(render.call(this, label, data));
        } catch (ex) {
          label += ' Invalid JSON text: ' + ex.toString();
          li.appendChild(doc.createTextNode(label));
        }
        ol.appendChild(li);
      }
      doc.body.appendChild(h3);
      doc.body.appendChild(ol);
    }
  }
})()