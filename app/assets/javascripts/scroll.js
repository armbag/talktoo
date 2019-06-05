function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];
  lastMessage.scrollIntoView();
}

$(document).ready(function() {
  $('select#placeholder-example').select2({
    placeholder: "Choose a person",
    allowClear: true
  });
});
