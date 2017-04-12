
predicates
  factorial(unsigned,real) - procedure (i,o) %pada predikat factorial ini memiliki 2 argumen dengan tipe data yang beda, yang pertama tipe dataya unsigned dan yg kedua real
  %tipe data unsigned adalah nilainya tidak boleh kurang dari 0 atau tidak boleh negatif
  %tipe data real adalah nilanya berisi sebuah titik yang menandakan desimal
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) % predikat factorial ini dideklarasikan lagi tapi disini ada 4 argumen beda dengan yang pertama yang hanya 2 argumen

clauses
  factorial(N,FactN):- /*Pada klausa ini adalah klausa pertama yang dicocokan dengan goal. Ada 2 argumen yang terdapat di klausa yaitu N dan FactN.
  			Pada klausa pertama ini nilai N sudah diketahui yaitu bernilai 3 dan nilai FactN masih belum diketahui dan harus dicari*/
	factorial(N,FactN,1,1.0). /*Klausa ini adalah sub dari klausa pertama yang berarti jika, pada factorial ini memiliki 4 argumen antara lain
				    (N,FactN,1,1.0). Sebelumya kan sudah dikethaui nilai N yaitu 3 maka hasil factorial ini adalah (3,FactN,1,1.0) */

  factorial(N,FactN,N,FactN):-!. /* Ini adalah klausa factorial yang kedua yang punya 4 argumen antara lain (N,FactN,,FactN). Pada klausa ini diakhiri dengan tanda seru (!)
  			 	    yang berarti cut, memiliki makna kalau nilai pada argumen N pertama sama dengan nilai argumen N ketiga dan juga pada nilai di argumen ke tiga
  			 	    FactN sama dengan nilai argumen ke empat FactN maka visual prolog akan melakukan penghentian lacak balik atau backtrack. */
  			 	    
  factorial(N,FactN,I,P):- %Pada klausa ini factorial punya 4 argumen antara lain (N,FactN,I,P) nilai masing masing dari ini adaklah N=3,I=1 dan P=1.0. Tapi nilai FactN belum diketahui
	NewI = I+1, %New I memiliki rumus yaitu hasil dari I ditambah 1
	NewP = P*NewI, % New P memiliki rumus yaitu hasil dari P dikali NewI
	factorial(N, FactN, NewI, NewP). %Dan factorial ini punya 4 argumen yang nilainya hasil dari penghitungan diatas.

goal
  factorial(3,X).
  /* Pada goal ini dicari dimana goal factorial yang telah ditentukan nilai argumen pertamanya yaitu 3 dan argumen ke dua berisi bvariabel X. Kita akan mencari  nilai X
  Visual prolog akan mencari fakta yang ada pada clauses yang cocok dengan goal, pada clauses diatas yang cocok adalah factorial(N,FactN). Jika sudah akan dilakukan unifikasi
  argumennya, disini nilai variabel N diikat dengan nilai 3 dan variabel FactN inilah yang diikat dengan variabel X yang ada pada GOAL. */
  
  /* Untuk Mencari Nilai X=FactN atau factorial dari 3 */
  /* factorial(3,FactN,1,1.0)
  	NewI = 1 + 1 = 2
  	NewP = 1.0 * 2 = 2.0
  	factorial(3,FactN,2,2.0)
    karena FactN masih bernilai 1 maka dilakukan lagi
    
    factorial(3,FactN,2,2.0)
    	NewI = 2 + 1 = 3
    	NewP = 2.0 * 3 = 6.0
    	factorial(3,FactN,3,6.0)
    pada kondisi ini sudah terpenuhi FactN=3 dan X bernilai 6 */
    
   /* Maka hasil dari progaram ini akan mencetak nilai dari X adalah 6 yang merupakan factorial dari 3!=3*2*1=6 */