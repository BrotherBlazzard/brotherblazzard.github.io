const baseURL = 'https://www.fruityvice.com/api/fruit/';
const main = document.querySelector('main');

const getFruit = async (q) => {
  let url = `${baseURL}${q}`;
  console.log(url);
  const response = await fetch(url);
  const data = await response.json();
  return data;
};

const populateFruit = async () => {
  const fruits = await getFruit();
  fruits.forEach(fruit => {
    const p = document.createElement('p');
    p.textContent = `Fruit:${fruit.name}| Color:${fruit.color} | id:${fruit.id}`;
    main.appendChild(p);
  });
};

getFruit('all');