import flatpickr from 'flatpickr';


const toggleDateInputs = function() {
  const period = document.getElementById('rent_period');
  // const endDateInput = document.getElementById('rent_end_date');
  const periods = JSON.parse(document.getElementById('periods').dataset.periods);
  console.log(periods);
  let unavailabilities = [];

  periods.forEach((range) => {
    if (range.length > 1) {
      unavailabilities.push({
        from: range[0],
        to: range[1]
      });
    } else {
      unavailabilities.push({
        from: range[0],
        to: range[0]
      });
    }
  });

  console.log(unavailabilities);

  if (period) {
    // const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
    // console.log(unavailableDates);
    flatpickr(period, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
      mode: "range",
      disable: unavailabilities,
    });
  }
}

export { toggleDateInputs }


// if ((startDateInput != null) && (endDateInput != null)) {
//   flatpickr(startDateInput, {
//     minDate: 'today',
//     dateFormat: 'd-m-Y',

//   });

//   flatpickr(endDateInput, {
//     minDate: 'today',
//     dateFormat: 'd-m-Y',
//   });
// }


