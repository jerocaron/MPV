import flatpickr from 'flatpickr';

const startDateInput = document.getElementById('rent_start_date');
  const endDateInput = document.getElementById('rent_end_date');

flatpickr(startDateInput, {
  minDate: 'today',
  dateFormat: 'd-m-Y',
});

flatpickr(endDateInput, {
  minDate: 'today',
  dateFormat: 'd-m-Y',
});

export { datePicker };
