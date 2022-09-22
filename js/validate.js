let url = 'https://jasonblazzard.com';

javascript: window.open(`https://validator.w3.org/check/${url}`);
setTimeout(function() {
  window.open(`https://jigsaw.w3.org/css-validator/check/${url}`)},3000);