function fetchHtml() {
  fetch('https://api.exchangeratesapi.io/latest?base=USD')
  .then((data) => {
    return data.rates.EUR.text();
  })
  .then((html) => {
    document.body.innerHTML = html
  });
}
