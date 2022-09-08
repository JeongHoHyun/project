document.getElementById('questionsRemove').addEventListener('click', (e) => {
  e.preventDefault();
  const pnoVal = document.getElementById('qnoVal').innerText;
  document.getElementById('qno').value = qnoVal;
  const delForm = document.getElementById('questionsRmForm');
  delForm.setAttribute('action', '/questions/remove');
  delForm.submit();
});