document.getElementById("tombol-pinjam").addEventListener("click", function(event){
    let tabel = document.querySelectorAll('tr');
    for (let index = 1; index < tabel.length; index++) {
        let data = tabel[index].querySelectorAll('td');
        let hp = data[3].innerHTML;
        let status = data[7].innerHTML;

        let isi_input = document.querySelector('#hp_dipakai').value;
        
        if (hp == isi_input && status == 'Sedang Meminjam') {
            event.preventDefault();
            alert('HP sedang dipakai!');
        }
    }
});

document.querySelector("#nama_santri").addEventListener("change", function (e){    
    let nama = document.querySelector('#nama_santri');
    let kelas = document.querySelector('#kelas_santri');
    
    if(nama.value != '') {
        let opsi = document.querySelectorAll('option');
        for(let i = 0; i < opsi.length; i++) {
            if (opsi[i].value == nama.value) {
                kelas.value = opsi[i].className;
                break;
            }
        }
    }
});