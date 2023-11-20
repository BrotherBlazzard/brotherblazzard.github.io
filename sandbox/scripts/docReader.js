document.querySelector('button').addEventListener('click', getDoc);

async function getDoc() {
  const URL = "https://brotherblazzard.github.io/wdd130";

  try {
    const response = await fetch(URL);
    const html = await response.text();
    console.log(html);
    // const parser = new DOMParser();
    // const doc = await parser.parseFromString(html, 'text/html');
    // const extractedHTML = doc.documentElement.outerHTML;
    // console.log('HTML:', extractedHTML);

  } catch (error) {
    console.error('Error:', error);
  }

}