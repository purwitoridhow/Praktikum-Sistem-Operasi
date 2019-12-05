#nama 		: PURWITO RIDHO W
#NPM  		: 18081010047
#PARALEL	: B
#TUGAS	 	: final project dengan menerapkan minimal 2 modul praktikum di dalam program yang dubuat. 

ridhoparkir(){
loop=1;
index_mtr=0;
index_msk=0;
index_byy=0;
index_type=0;


declare -a msk
declare -a byy
declare -a merk
declare -a nopol
declare -a type



while [[ loop -eq 1 ]]; do
	echo "=====PROGRAM PARKIR=====";
	echo "|1. input data motor   |";
	echo "|2. view data motor    |";
	echo "|3. search motor       |";
	echo "|4. Keluar Program     |";
	echo "========================";
	read temp;

	case "$temp" in
		"1" )
		echo "Input merk 	:";
		read merk[$index_mtr];

		echo "Input type 	:"
		read type[$index_type]
		let index_type=index_type+1;

		echo "Input nopol	:";
		read nopol[$index_mtr];
		let index_mtr=$index_mtr+1;

		echo "masuk pukul	: "
		read msk[$index_msk];
		let index_msk=$index_msk+1;

		echo "biyaya 		: "
		read byy[$index_byy];
		let index_byy=$index_byy+1;
			;;
		"2" )
		for (( i=0 ; i < $index_mtr; i++ )); do
			echo "merk		 : ${merk[$i]}";
			echo "type 		: ${type[$i]}";
			echo "nopol		: ${nopol[$i]}";
			echo "masuk pukul 	: ${msk[$i]}";
			echo "Biyaya 		: ${byy[$i]}";

		done
			;;
		"3" )
			echo -n "Masukkan nopol yang akan dicari:"
			read search
			for (( i=0 ; i < $index_mtr; i++ )); do
			if [[ search -eq ${nopol[i]} ]]; then
				
				echo "   merk		 : ${merk[$i]}   ";
				echo "   type 		: ${type[$i]}   ";
				echo "   nopol		: ${nopol[$i]}   ";
				echo "   masuk pukul 		: ${msk[$i]} ";
				echo "   Biyaya 		: ${byy[$i]} ";

				 echo "";
				 echo "";
				 echo "";
				 echo "";
				 echo "";

			  echo ""
			fi
			done

			;;
		"4" )
			
				echo "===================";
				echo "  				 ";	
				echo "  Silahkan Keluar  ";
				echo "   Hati - Hati 	 ";
				echo "   TerimaKasih	 ";	
				echo "    				 ";	
				echo "===================";

		let loop=2;
			;;
	esac

done
}

#penerapan modul praktikum

sampingan(){


	membuatfile(){
	echo "buat nama :"
	read nama_file
	nano nama_file $nama_file
}


	menjalankanfile(){
	ls -l

	echo "file yang dijalankan : "
	read nama_file
	bash nama_file $nama_file
	echo "berhasil"
	echo "	"
}


	aksesinternet(){

	firefox
}


	deadlock(){
	echo "anda memasuki area deadlock"
	echo "apakah anda yakin? (y/n)"
	echo "jika ingin berhenti tekan ctrl+c"
	read deal

	if [[ $deal == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
if [[ $deal ]]; then
	echo "enggak berani ya..."
fi	
}



install(){
	echo "aplikasi apa yang ingin anda install?"
	read installaplikasi
	sudo apt install $installaplikasi
}


while [[ pilih=1 ]]; do
	echo "========================================="
	echo "	    	 MENU SISTEM_OPERASI		   "
	echo "=========================================" 
	echo "1. apakah anda ingin membuat file?       "
	echo "2. apakah anda ingin menjalankan file?   "				   
	echo "3. aksesinternet			 			   "
	echo "4. deadlock						  	   "
	echo "5. Menginstall aplikasi?				   "
	echo "6. Keluar							   	   "
	echo "========================================="
	echo -n "Masukkan pilihan anda "
	read pilih



	case "$pilih" in 
		"1" ) membuatfile; 
					;; 
		"2" ) menjalankanfile;
					 ;;
 	    "3" ) aksesinternet;
			;; 
		"4" ) deadlock; 
			;; 
		"5") install ; 
			;;
 		"6")break;
 			 ;;	
 			  esac

done

}
while [[ pilih=1 ]]; do
echo "menu"
echo "1. parkir"
echo "2. sistem operasi"
echo "3. exit"
echo "pilih"
read pilih

case $pilih in
		1 )
		ridhoparkir
			;;
		2 )
		sampingan
			;;
		3 )
		exit
			;;
	esac	
done

