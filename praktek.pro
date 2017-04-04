DOMAINS
 nama = orang(symbol,symbol) /* (Pertama , Kedua) */
 hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */
 telepon = symbol /* Nomor telepon */
 
PREDICATES
 nondeterm daftar_telepon(nama,symbol,hari_lahir)
 yang_ulang_tahun_bulan_ini 
 konversi_bulan(symbol,integer)
 cek_bulan_ulang_tahun(integer,hari_lahir)
 cetak_orang(nama)

CLAUSES
 yang_ulang_tahun_bulan_ini:-
 	write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,
	write(" Nama Pertama\t\t Nama Kedua\n"),
	write("******************************************************"),nl,
 	date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */
 	daftar_telepon(Orang, _, Tanggal),
 	cek_bulan_ulang_tahun(Bulan_ini, Tanggal),
 	cetak_orang(Orang),
 	fail.
 
 yang_ulang_tahun_bulan_ini:-
 	write("\n\n Tekan sembarang tombol..."),nl,
 	readchar(_).
 
 cetak_orang(orang(Pertama,Kedua)):-
 	write(" ",Pertama,"\t\t\t ",Kedua),nl.
 
 cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-
 	konversi_bulan(Bulan,Bulan1),
 	Bul = Bulan1.
 	
 daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).
 daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).
 daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).
 daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
 daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,mar,1962)).
 daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).
 daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
 daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
 daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
 daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
 daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
 daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
 daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
 daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).
 
 konversi_bulan(jan, 1).
 konversi_bulan(feb, 2).
 konversi_bulan(mar, 3).
 konversi_bulan(apr, 4).
 konversi_bulan(may, 5).
 konversi_bulan(jun, 6).
 konversi_bulan(jul, 7).
 konversi_bulan(aug, 8).
 konversi_bulan(sep, 9).
 konversi_bulan(oct, 10).
 konversi_bulan(nov, 11).
 konversi_bulan(dec, 12).

GOAL
 yang_ulang_tahun_bulan_ini.
 
 /*
 Penjelasan:
 goal yang diinginkan adalah siapa saja yang ulang tahun bulan ini.
 
1. prolog akan memanggil goal yang_ulang_tahun_bulan_ini, kemudian akan mencari jawaban pada bagian clauses,
2. lalu setelah itu, prolog membaca subgoal pertama, kedua dan ketiga. lalu mencetakknya.
3. kemudian prolog akan membaca subgoal ke empat, yaitu date(_,Bulan_ini,_) dimana prolog akan mengambil bulan pada 
   sistem komputer dan memasukkannya pada variable  bulan_ini
4. kemudian prolog akan membaca subgoal ke lima, yaitu daftar_telpon(Orang,_Tanggal),lalu ditemukan erwin effendy dengan tanggal lahir
   3 jan 1955. sehingga var. orang mengikat nilai erwin effendy dan var. tanggal mengikat nilai 3 jan 1955.
5. lalu ke subgoal berikutnya, yaitu cek_bulan_ulang_tahun(Bulan_ini, Tanggal), dimana var.bulan_ini=april dan tanggal = 3 jan 1955
6. lalu dilakukan pencocokan, jika sesuai maka akan lanjut ke subgoal berikutnya, jika tidak maka akan dilakukan proses lacak balik hingga
   bertemu dengan data yang cocok, yaitu bulan_ini = april dan tanggal= _ april _.
7. predikat fail digunakan untuk memaksa proses lacak balik, walaupun telah menemukan solusi.
8. lalu pada proses lacak balik, ditemukan tanggal_lahir = 29 apr 1951 dengan nama = Ui yansen
8. ketikan dilakukan pencocokan dan ternyata sesuia, lalu Visual prolog akan mencari lagi. hinggal proses lacak balik selesai.
9. dan ternyata hanya ditemukan 1 solusi yaitu Ui yansen. lalu Visual prolog akan mencetak hasil nya.
 */