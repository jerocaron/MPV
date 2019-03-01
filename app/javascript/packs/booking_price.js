const bookingPrice = function() {
  const period = document.getElementById('rent_period');
  console.log(document.getElementById('ppd').innerText)
  const ppd = parseInt(document.getElementById('ppd').innerText);
  const price = document.getElementById('booking_price')

  period.addEventListener('change', (event) => {
    const input = event.target.value;
    if (input.includes('to')) {
      const start_date = new Date(input.split(' to ')[0].split('-').reverse().join('-'));
      const end_date = new Date(input.split(' to ')[1].split('-').reverse().join('-'));
      const rentPrice = ppd * (Math.round((end_date-start_date)/(1000*60*60*24))+1)
      console.log(start_date, end_date, ppd)
      price.innerText = `Montant de votre réservation: ${rentPrice}€`
    }
  });

}

export { bookingPrice }
