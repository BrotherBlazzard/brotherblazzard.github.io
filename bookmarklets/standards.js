(function () {
  const url = window.location.href;
  const doctype = document.doctype;
  const desc = document.querySelector('meta[name="description"]');
  let report = "";
  report = '<h1>' + url + '</h1><p style="margin-left: 15px;">';
  if (doctype != null) {
    if (doctype.name == 'html') {
      report += '&#9745; Document Type Definition (DTD)';
    } else {
      report += '<br><span style="color: red;">&#9744; The document type declaration is incorrect.</span> => ' + doctype.name;
    }
  } else {
    report += '<br><span style="color: red;>&#9744; DTD (doctype) NOT found!</span>';
  }
  if (document.title) {
    report += '<br>&#9745; &lt;title&gt;&nbsp; "<em>' + document.title + '</em>" (' + document.title.length + ' characters)';
    if (document.title.length < 20 || document.title.length > 71) {
      report += '<br><span style="color: red; margin: 20px;">Check the document title content as being relevant.</span>=> <em>"' + document.title + '"</em>';
    }
    if (document.title.includes('page') || document.title.includes('Page')) {
      report += '<br><span style="color: red; margin: 20px;">The title includes non-relevant terms.</span>';
    }
  } else {
    report += '<br><span style="color: red;">&#9744; Page title not found.</span>';
  }
  if (desc) {
    report += '&#9745; &lt;meta name="description"&gt; (' + desc.getAttribute('content').length + ' characters)<br>';
    if (desc.getAttribute('content').length < 50 || desc.getAttribute('content').length > 170) {
      report += '<span style="color: red; margin: 20px;">Check the meta description content.</span>=> <em>"' + desc.getAttribute("content") + '"</em>';
    }
  } else {
    report += '<br><span style="color: red;">&#9744; &lt;meta&gt; description not found.</span>';
  }
  if (document.documentElement.lang) {
    if (document.documentElement.lang == "en-us") {
      report += '&#9745; html lang attribute found and set to en-us';
    } else {
      report += '<br><span style="color:red;">&#9744; lang attribute value should be <em>en-us</em>.</span>';
    }
  } else {
    report += '<br><span style="color: red;">&#9744; The lang attribute of the opening html tag was not found!</span>';
  }
  report += '</p>';
  window.open(document.write(report));
})();