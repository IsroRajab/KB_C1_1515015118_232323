domains
pembeli,jenis =symbol harga, pembayaran = ulong

predicates
nondeterm beli (pembeli,jenis,harga,pembayaran)
nondeterm rest (harga,pembayaran,harga) 

clauses
beli (budi,mangga,10000,20000).
beli (gilang,jeruk,15000,20000).


rest(Harga,Pembayaran,Kembalian):-
Kembalian=Pembayaran-Harga.

goal
beli(Pembeli,Jenis,Harga,Pembayaran),Pembeli=gilang,rest(Harga,Pembayaran,Kembalian).