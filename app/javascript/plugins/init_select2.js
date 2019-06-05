import $ from 'jquery';
import 'select2';


const initSelect2 = () => {
  $('.select2').select2({
    placeholder: "Choose more topic tags"
  }); // (~ document.querySelectorAll)
};

export { initSelect2 };



