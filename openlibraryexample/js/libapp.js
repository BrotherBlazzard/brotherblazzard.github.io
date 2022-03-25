import { getBooksBySubject } from './library.js';

// DOM Element(s)

const subjectText = document.querySelector('#subject');
const getBooksButton = document.querySelector('#getBooks');

// Main

getBooksButton.addEventListener('click', () => {
  getBooksBySubject(subjectText.value);
});
