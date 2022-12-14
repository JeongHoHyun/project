async function addFavorToServer(favorData) {
    try {
        const url = '/member/addFavorTh';
        const config = {
            method: 'post',
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            body: JSON.stringify(favorData)
        };
        const resp = await fetch(url, config);
        const result = await resp.json();
        return result;
    } catch (error) {
        console.log(error);
    }
}
async function removeFavorToServer(favorData) {
    try {
        const url = '/member/removeFavorTh';
        const config = {
            method: 'post',
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            body: JSON.stringify(favorData)
        };
        const resp = await fetch(url, config);
        const result = await resp.json();
        return result;
    } catch (error) {
        console.log(error);
    }
}
async function getFavorThList(mnoVal) {
    try {
        const resp = await fetch('/member/spread/' + mnoVal);
        const list = await resp.json();
        return await list;
    } catch (error) {
        console.log(error);
    }
}

async function getTheaterListFromServer(regionNum) {
    try {
        const resp = await fetch('/theater/region/' + regionNum);
        const result = await resp.json();
        return await result;
    } catch (error) {
        console.log(error);
    }
}

function spreadTheaterList(list) {
    let area = document.getElementById('select_theater');
    area.innerHTML = '';
    let tag = '<option value="" selected="selected">๊ทน์ฅ์ ํ</option>';
    console.log(list);
    console.log(typeof list);
    for (const key in list) {
        console.log(list[key]);
        for (const tvo of list[key]) {
            tag += `<option value="${tvo.tno}">`;
            tag += `CGV${tvo.tname}`;
            tag += '</option>';
        }
    }
    area.innerHTML += tag;
}

document.addEventListener('click', (e) => {
    let ul = document.getElementById('myFvoList');
    let count = ul.childElementCount;
    if (e.target.classList.contains('addModal')) {
        const tnoVal = document.getElementById('select_theater').value;
        const mnoVal = e.target.dataset.mno;
        if (mnoVal == null || mnoVal == '') {
            alert('๋ก๊ทธ์ธ ํ ์ด์ฉํด์ฃผ์ธ์.');
        } else if (tnoVal == null || tnoVal == '') {
            alert('์กด์ฌํ์ง ์๋ ๊ทน์ฅ์๋๋ค.');
        }
        else {
            
            const tname = document.getElementById('select_theater');
            let tnameVal = tname.options[tname.selectedIndex].text;
            const liTag = document.getElementsByClassName('liTag');
            let li = '';
            count = 
            console.log(ul.childElementCount);
            
            let favorData = {
                mno: mnoVal,
                tno: tnoVal
            };
            addFavorToServer(favorData).then(result => {
                if (parseInt(result) === 0) {
                    console.log(parseInt(result));
                    console.log(result);
                    if (count > 2) {
                        alert('์ต๋ ๋ฑ๋ก๊ฐ์ ์๋๋ค ์ญ์  ํ ๋ค์ ๋ฑ๋กํด์ฃผ์ธ์!');
                    } else {
                        li += `<li class="liTag" data-tno="${tnoVal}">`
                        li += '<div class="box-polaroid">';
                        li += '<div class="box-inner">';
                        li += `<div class="theater">${tnameVal}</div>`;
                        li += `<button type="button" class="removeModal" data-mno="${mnoVal}" data-tno="${tnoVal}" data-idx="${ul.childElementCount}">CGV${tnameVal} ์ญ์ </button></div></div>`;
                        li += '</li>'
                    }
                    ul.innerHTML += li;
                    alert("๋ฑ๋ก๋์์ต๋๋ค.");
                } else if((parseInt(result)) === 1) {
                    console.log(result);
                    alert("์ด๋ฏธ ๋ฑ๋ก๋ ๊ทน์ฅ์๋๋ค.");
                }
            })
        }
    }
    if (e.target.classList.contains('removeModal')) {
        const tnoVal = e.target.dataset.tno;
        const mnoVal = e.target.dataset.mno;
        if (mnoVal == null || mnoVal == '') {
            alert('๋ก๊ทธ์ธ ํ ์ด์ฉํด์ฃผ์ธ์!');
        } else {
            let favorData = {
                mno: mnoVal,
                tno: tnoVal
            };
            removeFavorToServer(favorData).then(result => {
                if (parseInt(result)) {
                    alert("์ญ์ ๋์์ต๋๋ค!");
                    count--;
                }
            })
        }
        const ul = document.getElementById('myFvoList');
        const idx = e.target.dataset.idx;
        const liTag = document.getElementsByClassName('liTag');
        const parent = document.getElementById('myFvoList');
        // liTag[idx].innerHTML = null;
        parent.removeChild(liTag[idx]);
    }

    if (e.target.classList.contains('setFavorTh')) {
        const mnoVal = document.getElementById('mnoVal').value;
        const modal = document.querySelector('.modal');
        modal.style.display = 'block';
    }
    if (e.target.classList.contains('modal_close')) {
        const mnoVal = document.getElementById('mnoVal').value;
        const modal = document.querySelector('.modal');
        modal.style.display = 'none';
        location.reload();
    }

    if (e.target.classList.contains('thRegion')) {
        console.log(e.target.value);
        console.log(typeof parseInt(e.target.dataset.region));
        switch (parseInt(e.target.value)) {
            case 0:
                getTheaterListFromServer(0).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 1:
                getTheaterListFromServer(1).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 2:
                getTheaterListFromServer(2).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 3:
                getTheaterListFromServer(3).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 4:
                getTheaterListFromServer(4).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 5:
                getTheaterListFromServer(5).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 6:
                getTheaterListFromServer(6).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 7:
                getTheaterListFromServer(7).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;
            case 8:
                getTheaterListFromServer(8).then(result => {
                    console.log(result);
                    spreadTheaterList(result);
                });
                break;

            default:
                break;
        }
    }
})

