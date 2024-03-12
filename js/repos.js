// fetch('https://api.github.com/users/blazzii')

let repos = [130, 230, 330, 430];

async function getRepos(repo) {
    let response = await fetch(`https://api.github.com/search/repositories?q=wdd${repo}&per_page=1`)

    let data = await response.json();
    document.getElementById(`${repo}`).textContent = data.total_count;

}

repos.forEach(repo => {
    getRepos(repo);
});



