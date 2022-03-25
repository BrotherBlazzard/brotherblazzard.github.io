// openlibrary.org - subject
const baseURL = 'https://openlibrary.org/search.json';

// DOM Elements
const numberFound = document.querySelector('#numFound');
const booklist = document.querySelector('#list');

export async function getBooksBySubject(subject) {
  // subject provided by user
  const URL = `${baseURL}?title=${subject}`;

  const response = await fetch(URL);
  let data = await response.json(); // JSON format expected

  console.log(data); // testing only

  // screen output - should be placed in a view
  numberFound.textContent = `Total Found: ${data.numFound}`;
  let books = data.docs;
  books.forEach((book) => {
    let li = document.createElement('li');
    li.textContent = book.title;
    booklist.append(li);
  });
}
