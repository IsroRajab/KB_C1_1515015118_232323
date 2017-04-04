DOMAINS 
  nama_mk,depan,belakang,prodi,jk,nama_jalan,nomor,kab,provinsi = string
  ruangan = integer
  nim = long
  nama_dosen = dosen(depan,belakang)
  nama_mhs = mhs(depan,belakang)
  alamat = alamat(jalan,kab,provinsi)
  jalan = jalan(nama_jalan,nomor)

PREDICATES
  nondeterm matkul(nama_mk,nama_dosen,prodi,ruangan)
  nondeterm mhs(nama_mk,nama_mhs,jk,nim,alamat)
  nondeterm ambil(nama_mk,nama_dosen,ruangan,nama_mhs,alamat)
  nondeterm semester(nama_mk,nama_mhs,ruangan,nama_dosen)

CLAUSES
  matkul("Intelejensi Buatan",dosen("Abdul","Kadir"),"Manajemen Informatika",1).
  matkul("PDE",dosen("Indra","Yatini"),"Teknik Informatika",2).
  matkul("Teknik Antarmuka",dosen("Sigit","Anggoro"),"Teknik Komputer",3).

  mhs("Intelejensi Buatan",mhs("Sugeng","Riyadi"),"Laki-Laki",2002001,alamat(jalan("Jl.Sudirman","No. 2"),"Pontianak","Kalimantan Barat")).
  mhs("Intelejensi Buatan",mhs("Yulia","Sugondo"),"Perempuan",2002002,alamat(jalan("Jl.A.Yani","No. 10"),"Klaten","Jawa Tengah")).
  mhs("Intelejensi Buatan",mhs("Budiman","Sejati"),"Laki-Laki",2002003,alamat(jalan("Jl.Slamet Riyadi","No. 45"),"Solo","Jawa Tengah")).

  mhs("PDE",mhs("Laksamana","Sukardi"),"Laki-Laki",2002004,alamat(jalan("Jl.MT Haryono","No. 10"),"Palembang","Sumatera Selatan")).
  mhs("PDE",mhs("Rini","Suwandi"),"Perempuan",2002005,alamat(jalan("Jl.Letjen Suprapto","No. 12"),"Surabaya","Jawa Timur")).
  mhs("PDE",mhs("Kwik","Kian Gie"),"Laki-Laki",2002006,alamat(jalan("Jl.WR. Supratman","No. 100"),"Makassar","Sulawesi Selatan")).

  mhs("Teknik Antarmuka",mhs("Riri","Reza"),"Laki-Laki",2002007,alamat(jalan("Jl.RW Monginsidi","No. 30"),"Purwokerto","Jawa Tengah")).
  mhs("Teknik Antarmuka",mhs("Rachel","Maryam"),"Perempuan",2002008,alamat(jalan("Jl.RW Otista","No. 112"),"Bandung","Jawa Barat")).
  mhs("Teknik Antarmuka",mhs("Garin","Nugroho"),"Laki-Laki",2002009,alamat(jalan("Jl.Tanjung Pura","No. 101"),"Jaya pura","Papua")).

  ambil(Matkul,Dosen,Ruangan,Mahasiswa,Alamat):-

						matkul(Matkul,Dosen,_,Ruangan),
						mhs(Matkul,Mahasiswa,_,_,Alamat).
  semester(Matkul,Mahasiswa,Ruangan,Dosen):-
  						nl,write("*****************************************************MATAKULIAH YANG DIAJAKAR SEMESTER INI**********************************************"),nl,
						matkul(Matkul,Dosen,_,Ruangan),
						mhs(Matkul,Mahasiswa,_,_,_).
						

GOAL 
 ambil(Matkul,Dosen,Ruangan,Mahasiswa,Alamat), Matkul="Intelejensi Buatan";
 semester(Matkul,Mahasiswa,Ruangan,Dosen).