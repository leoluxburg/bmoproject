fetch('https://api.exchangeratesapi.io/latest?base=USD')
  .then(
    function(response) {
      if (response.status !== 200) {
        console.log('Status Code: ' +
          response.status);
        return;
      }

      // Examine the text in the response
      response.json().then(function(data) {
        console.log(data.rates.EUR);
      });
    }
  )
  .catch(function(err) {
    console.log('Fetch Error :-S', err);
  })
