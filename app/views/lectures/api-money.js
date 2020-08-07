function fetchData() {
  fetch(" https://api.exchangeratesapi.io/latest?base=USD")
    .then(response => {
      if (!response.ok){
        throw Error("ERROR");
      }
      return response.json();
    })
    .then(data => {
      console.log(data.rates);
      document.querySelector("#app").innerHTML = `<p> 1 US = ${data.rates.MXN.toFixed(2)} Pesos</p>`
    })
    .catch(error => {
      console.log(error);
    });
}

fetchData();
