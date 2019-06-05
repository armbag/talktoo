import $ from 'jquery';
import 'select2';


const initSelect2 = () => {
  $('.select2').select2(); // (~ document.querySelectorAll)
};

$(document).ready(function() {
  $('search').select2({
    placeholder: "Choose a person",
    allowClear: true
  });
});
// $("#elem").select2({theme:"select"});

export { initSelect2 };



