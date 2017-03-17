domains
nama = symbol
matakuliah = symbol
nilai = symbol
i = symbol
p = symbol
s = symbol

predicates

nondeterm mahasiswa (nama,nilai,matakuliah)
nondeterm mata (i,p,s)

clauses

mata (intelegensiBuatan,pde,sistemoperasi).

mahasiswa (irfan,a,intelegensiBuatan).
mahasiswa (komeng,d,intelegensiBuatan).
mahasiswa (dati,c,intelegensiBuatan).
mahasiswa (fatima,b,intelegensiBuatan).
mahasiswa (maspion,c,intelegensiBuatan).

mahasiswa (ricky,e,pde).
mahasiswa (embang,a,pde).
mahasiswa (salmin,d,pde).
mahasiswa (vina,b,pde).
mahasiswa (sondang,c,pde).

mahasiswa (pamuji,d,sistemoperasi).
mahasiswa (luki,e,sistemoperasi).
mahasiswa (sadek,b,sistemoperasi).
mahasiswa (yusida,a,sistemoperasi).
mahasiswa (eka,a,sistemoperasi).

goal
mahasiswa (Nama,_,Matakuliah), Matakuliah=intelegensiBuatan;
mahasiswa (Tidaklulus,Nilai,_), Nilai>"c";
mahasiswa (Lulus,Nilai,_), Nilai<="c";
mata (MataKuliah,MataKulliah,MataKuliiah);
mahasiswa (Nama,_,_).