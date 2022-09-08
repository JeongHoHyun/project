async function postCommentToServer(cmtData){
  try {
    const url = '/comment/post';
    const config = {
      method: 'post',
      headers: {
        'Content-Type': 'application/json; charset=utf-8'
      },
      body: JSON.stringify(cmtData)
    };
    const resp = await fetch(url, config);
    const result = await resp.text();
    return result;  
  } catch (error) {
    console.log(error);
  }  
}

document.getElementById('cmtSbmBtn').addEventListener('click', (e) => {
  const cmtInputObj = document.getElementById('cmtText');
  if(cmtInputObj.value == null || cmtInputObj.value == ''){
    alert('댓글 내용을 입력해 주세요!');
    cmtInputObj.focus();
    return false;
  }else {
    let cmtData = {
      qno : document.getElementById('qnoVal').innerText,
      writer : document.getElementById('cmtWriter').innerText,
      content : cmtInputObj.value
    };
    console.log(cmtData);
    postCommentToServer(cmtData).then(result => {
      if(parseInt(result)) {
        alert('댓글 등록 성공~');
        cmtInputObj.value = "";
        getCommentList(document.getElementById('qnoVal').innerText);
      }
    });
  }
});
async function spreadCommentFromServer(qnoVal, pageNo) {
  try {
      const resp = await fetch('/comment/'+qnoVal+"/"+pageNo); // RESTful
      const pagingHandler = await resp.json();
      return await pagingHandler; 
  } catch (error) {
    console.log(error);
  }
}

function getCommentList(qnoVal, pageNo=1){
  spreadCommentFromServer(qnoVal, pageNo).then(result => {
    console.log(result);
    const sesWriter = document.getElementById('cmtWriter').innerText;
    if (result.cmtList.length && pageNo == 1) {
      let tag = '<thead><tr><th>Writer</th><th>Content</th><th>Mod At</th><th>Feature</th></tr></thead>';
      tag += '<tbody id="cmtTbody">';
      for (const cvo of result.cmtList) {
      tag += '<tr>'
      tag += `<td>${cvo.writer}</td>`;
      tag += `<td>${cvo.content}</td>`;
      tag += `<td>${cvo.modAt}</td><td>`;
      if(cvo.writer == sesWriter){
        tag += `<button class="btn btn-sm btn-warning cmtMod" data-ano="${cvo.ano}">E</button>`;
        tag += `<button class="btn btn-sm btn-danger cmtDel" data-ano="${cvo.ano}">X</button>`;
      }
      tag += '</td></tr>'  
      }
      tag += '</tbody>';
      document.getElementById('cmtZone').innerHTML = tag;
    } else if(pageNo > 1){
      const tbodyTag = document.getElementById('cmtTbody');
      let tag = '';
      for (const cvo of result.cmtList) {
        tag += '<tr>'
        tag += `<td>${cvo.writer}</td>`;
        tag += `<td>${cvo.content}</td>`;
        tag += `<td>${cvo.modAt}</td><td>`;
        if(cvo.writer == sesWriter){
          tag += `<button class="btn btn-sm btn-warning cmtMod" data-ano="${cvo.ano}">E</button>`;
          tag += `<button class="btn btn-sm btn-danger cmtDel" data-ano="${cvo.ano}">X</button>`;
        }
        tag += '</td></tr>'  
        }
        tbodyTag.innerHTML += tag;
    } else {
      // 리스트가 존재하지 않을 때 DOM
    }
    const moreBtn = document.getElementById('moreBtn');
    if (pageNo < parseInt(Math.ceil(result.totalCount / 10.0))) {
      moreBtn.style.visibility = 'visible';
      let pageIdx = moreBtn.dataset.page;
      moreBtn.dataset.page = parseInt(pageIdx) + 1;
    } else {
      moreBtn.style.visibility = 'hidden';
    }
  });
}
async function commentUpdateToServer(cmtData) {
  try {
    const url = "/comment/"+cmtData.ano;
    const config = {
      method: 'PUT', // PATCH도 가능
      headers: {
        'Content-Type':'application/json; charset=utf-8'
      },
      body: JSON.stringify(cmtData)
    };
    const resp = await fetch(url, config);
    const result = await resp.text();
    return result;  
  } catch (error) {
    console.log(error);
  }
}
async function commentRemoveFromServer(anoVal) {
  try {
    const url = "/comment/"+anoVal;
    const config = {
      method: 'DELETE'
    };
    const resp = await fetch(url, config);
    const result = await resp.text();
    return result;
  } catch (error) {
    console.log(error);
  }
}
document.addEventListener('click', (e) => {
  if(e.target.classList.contains('cmtMod')){ 
    const anoVal = e.target.dataset.ano;   
    const tr = e.target.closest('tr');
    const contentVal = tr.querySelector('td:nth-child(2)').innerText; // modal에 띄우기

    document.querySelector('.modal-body').innerHTML
     = `<input type="text" class="form-control cmtModifiedText" value="${contentVal}">`;
     document.querySelector(".modSbmBtn").dataset.ano = anoVal;
     document.getElementById('modalBtn').click();    
  }
  if(e.target.classList.contains('modSbmBtn')){
    const cmtModInput = document.querySelector('.cmtModifiedText'); 
    const cmtTextVal = cmtModInput.value;
    if(cmtTextVal == '') {
      alert('수정할 댓글 내용을 입력하세요!');
      cmtModInput.focus();
      return false;
    }else{
      const cmtData = {
        ano: e.target.dataset.ano,
        content: cmtTextVal
      };
      commentUpdateToServer(cmtData).then(result => {
        if(parseInt(result)){
          document.querySelector('.btn-close').click();        
        }
        getCommentList(document.getElementById('qnoVal').innerText);
      });
    }
  }
  if(e.target.classList.contains('cmtDel')){
    const anoVal = e.target.dataset.ano;
    commentRemoveFromServer(anoVal).then(result => {
      if(parseInt(result)){
        alert("댓글 삭제 성공!");
        getCommentList(document.getElementById('qnoVal').innerText);
      }
    });
  }
  if(e.target.id == 'moreBtn'){
    e.preventDefault();
    const qnoVal = document.getElementById('qnoVal').innerText;
    const page = e.target.dataset.page;
    console.log(page);
    getCommentList(qnoVal, parseInt(page));
  }
});


