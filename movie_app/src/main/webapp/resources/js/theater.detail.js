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

async function getTheaterListFromServer(regionNum) {
    try {
        const resp = await fetch('/theater/region/'+regionNum);
        const result = await resp.json();
        return await result;
    } catch (error) {
        console.log(error);
    }
}

function spreadTheaterList(list) {
    let area = document.getElementById('printZone');
    const mnoVal = document.getElementById('mnoVal').value;
    area.innerHTML = '';
    let tag = '<ul>';
    console.log(list);
    console.log(typeof list);
    for (const key in list) {
        console.log(list[key]);
        for (const tvo of list[key]) {
            console.log(tvo);
            tag += '<li>';
            if (mnoVal == null || mnoVal == '') {
                tag += `<a title="CGV${tvo.tname}"
            href="/theater/detail?tno=${tvo.tno}&mno=0">CGV${tvo.tname}</a>`;
            } else {
                tag += `<a title="CGV${tvo.tname}"
            href="/theater/detail?tno=${tvo.tno}&mno=${mnoVal}">CGV${tvo.tname}</a>`;
            }
            tag += '</li>';
        }
    }
    tag += `</ul>`;
    area.innerHTML += tag;
}
function spreadTheaterListToModal(list) {
    let area = document.getElementById('select_theater');
    area.innerHTML = '';
    let tag = '<option value="" selected="selected">????????????</option>';
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

document.addEventListener('click', (e) =>{
    let ul = document.getElementById('myFvoList');
    let count = ul.childElementCount;
    if (e.target.classList.contains('addModal')) {
        const tnoVal = document.getElementById('select_theater').value;
        const mnoVal = e.target.dataset.mno;
        if (mnoVal == null || mnoVal == '') {
            alert('????????? ??? ??????????????????.');
        } else if (tnoVal == null || tnoVal == '') {
            alert('???????????? ?????? ???????????????.');
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
                        alert('?????? ???????????? ????????? ?????? ??? ?????? ??????????????????!');
                    } else {
                        li += `<li class="liTag" data-tno="${tnoVal}">`
                        li += '<div class="box-polaroid">';
                        li += '<div class="box-inner">';
                        li += `<div class="theater">${tnameVal}</div>`;
                        li += `<button type="button" class="removeModal" data-mno="${mnoVal}" data-tno="${tnoVal}" data-idx="${ul.childElementCount}">CGV${tnameVal} ??????</button></div></div>`;
                        li += '</li>'
                    }
                    ul.innerHTML += li;
                    alert("?????????????????????.");
                } else if((parseInt(result)) === 1) {
                    console.log(result);
                    alert("?????? ????????? ???????????????.");
                }
            })
        }
    }
    if (e.target.classList.contains('removeModal')) {
        const tnoVal = e.target.dataset.tno;
        const mnoVal = e.target.dataset.mno;
        if (mnoVal == null || mnoVal == '') {
            alert('????????? ??? ??????????????????!');
        } else {
            let favorData = {
                mno: mnoVal,
                tno: tnoVal
            };
            removeFavorToServer(favorData).then(result => {
                if (parseInt(result)) {
                    alert("?????????????????????!");
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

    if (e.target.classList.contains('modal_close')) {
        const modal = document.querySelector('.modal');
        location.reload();
    }

    if (e.target.classList.contains('region')) {
        console.log(e.target.dataset.region);
        console.log(typeof parseInt(e.target.dataset.region));
        switch (parseInt(e.target.dataset.region)) {
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

document.addEventListener('change', (e) => {
    if (e.target.id == "select_region") {
        if (e.target.classList.contains('thRegion')) {
            console.log(e.target.value);
            console.log(typeof parseInt(e.target.dataset.region));
            switch (parseInt(e.target.value)) {
                case 0:
                    getTheaterListFromServer(0).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 1:
                    getTheaterListFromServer(1).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 2:
                    getTheaterListFromServer(2).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 3:
                    getTheaterListFromServer(3).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 4:
                    getTheaterListFromServer(4).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 5:
                    getTheaterListFromServer(5).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 6:
                    getTheaterListFromServer(6).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 7:
                    getTheaterListFromServer(7).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
                case 8:
                    getTheaterListFromServer(8).then(result => {
                        console.log(result);
                        spreadTheaterListToModal(result);
                    });
                    break;
    
                default:
                    break;
            }
        }
    }
});

// ---------------------- ?????? ????????? ----------------------

const book_obj = {
    date_list: [], // ??????????????? ????????? DateDTO ??????
    date_select: 0, // ???????????? ?????? ???????????? ??????, ?????????: 0, 0: ??????, 1:?????? ...

    theater_all_list: [],
    theater_list: [], // ??????????????? ????????? TheaterVO ??????
    theater_select: "", // ???????????? ?????? ????????? ??????(tno) ?????????: ""(????????????)
}


// DateDTO ?????? ????????????
async function get_date_data_from_server(tno, movie_id = "") {
    try {
        const resp = await fetch('/book/date/' + tno + '/' + movie_id); 
        const result = await resp.json();
        return result;
    } catch (error) {
        console.log(error);
    }
}

document.addEventListener('DOMContentLoaded', () => {
    calendar_writer();
    theater_select(get_tno);
})

document.addEventListener('click', (e) => {
    // ???????????? ?????? ?????????
    if(e.target.classList.contains('calendar-item') || e.target.closest('.calendar-item') != null) {
        const date_idx = e.target.classList.contains('calendar-item') ? parseInt(e.target.dataset.dateIdx) : parseInt(e.target.closest('.calendar-item').dataset.dateIdx);
        calendar_select(date_idx);
    }
});

// DateDTO ????????????
async function theater_select(tno) {
    book_obj.theater_select = tno;
    await get_date_data_from_server(book_obj.theater_select, book_obj.movie_select).then(result => {
        book_obj.date_list = result;
    });
    refresh_calendar_opacity();
    auto_calendar_select();
}

// ????????? ?????? ??? ????????? ??????
function calendar_writer() {
    const calendar_zone = document.getElementById('calendar');
    calendar_zone.innerHTML = "";
    const week = ['???', '???', '???', '???', '???', '???', '???'];
    let = str = "";
    for (let i = 0; i < 7; i++) {
        const now = new Date();
        const day = new Date(now.setDate(now.getDate() + i));
        str += `<div class="calendar-item opacity-33 text-center px-3 mx-1 ${day.getDay() == 0 ? 'text-danger' : day.getDay() == 6 ? 'text-primary' : ''}" data-date-idx="${i}">
        <span class="calendar-item-date m-0 fs-2">${day.getDate()}</span> <span class="fs-3 m-0">${week[day.getDay()]}</span></div>`
    }
    calendar_zone.innerHTML = str;
    calendar_select(0);
}

// ?????? ????????? book_obj ????????? ?????? ????????? ?????? ?????? ??????
function calendar_select(date_idx) {
    book_obj.date_select = date_idx;
    document.querySelectorAll('.calendar-item').forEach(el => {
        el.classList.remove('date-selected')
    })
    document.querySelector(`.calendar-item[data-date-idx="${date_idx}"]`).classList.add('date-selected');
    refresh_ticket_list();
}

// ???????????? ????????? ????????? ??? ????????? ?????? ??????
function auto_calendar_select() {
    const auto_move = document.querySelector('.calendar-item:not(.opacity-33)');
    if (auto_move != null) {
        auto_move.click();
    }
}

// ????????? ?????? ?????? opacity ??????
function refresh_calendar_opacity() {
    document.querySelectorAll('.calendar-item').forEach((el) => {
        el.classList.add('opacity-33');
    })
    for (let i = 0; i < 7; i++) {
        if (book_obj.date_list[i].tkdto.length > 0) {
            document.querySelector(`.calendar-item[data-date-idx="${i}"]`).classList.remove('opacity-33');
        }
    }
}

async function refresh_ticket_list() {
    const ticket_zone = document.getElementById('ticket_zone');
    let str = "";
    if (book_obj.date_list.length < 1 || book_obj.date_list[book_obj.date_select].tkdto.length < 1) {
        str += '<div class="mt-3 position-absolute top-50 start-50 translate-middle text-center">';
        str += '<p class="mb-1"><i class="bi bi-camera-reels fs-1"></i></p>';
        str += '<p class="mb-0">?????? ????????? ?????? ????????? ????????????.</p>';
        ticket_zone.innerHTML = str;
        return;
    }
    book_obj.date_list[book_obj.date_select].tkdto.forEach(tkdto => {
        let rate_name = "";
        switch (tkdto.movo.rate) {
            case "18": rate_name = "??????"; break;
            case "12": case "15": rate_name = tkdto.movo.rate; break;
            default: rate_name = "??????"; break;
        }
        str += `<div class="ticket-item mb-4">`;
        str += `<div><span class="ic_grade gr_${tkdto.movo.rate.toLowerCase()}">${rate_name}</span><span class="fs-5 text-black fw-bold">${tkdto.movo.movieNm}</span></div>`;
        tkdto.rdtoList.forEach(rdto => {
            str += `<div class="room-item">`;
            str += `<div class="mx-1 mt-3 mb-2">${rdto.rvo.special}</div>`;
            str += `<div class="schedule-zone d-flex flex-wrap">`;
            rdto.scdtoList.forEach(scdto => {
                str += `<a href="/book/seating/${scdto.scvo.scno}" class="schedule-item position-relative p-1 m-1 d-block text-black text-decoration-none" data-scno="${scdto.scvo.scno}">`;
                str += `<div class="fw-bold fs-6 text-center">${scdto.scvo.startTime.substring(11, 16)}</div>`;
                str += `<div class="col-10 mx-auto"><div class="float-start schedule-item-seat">`;
                str += `<span class="text-success fw-bold">${scdto.totalEmptyCount} </span><span class="text-muted">/ ${scdto.totalSeatCount}</span></div>`;
                str += `<div class="float-end schedule-item-room"><span>${rdto.rvo.rname}</span></div></div>`;
                str += `<div class="schedule-tooltip position-absolute start-50 translate-middle-x d-none">?????? ${scdto.scvo.endTime.substring(11, 16)}</div>`;
                str += `</a>`;
            })
            str += `</div>`;
            str += `</div>`;
        });
        str += `</div>`;
    })
    ticket_zone.innerHTML = str;
}