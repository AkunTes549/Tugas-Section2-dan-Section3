import 'dart:io';

void main() {
var kerjakan = true;

void tampilMenu() {
    print("======================================================================================");
    print("Tugas Section-2");
    print("======================================================================================");
    print("1. Mengitung penjumlahan 5 variabel dengan tipe data yang berbeda");
    print("2. Menghitung luas dan keliling lingkaran dengan penerapan tipe data Final atau Const");
    print("3. Manipulasi String dengan membuat paragraf sederhana");
}

void nomorSatu() {
    num angka1 = 1;
    int angka2 = 2;
    double angka3 = 3;
    String angka4 = "4";
    dynamic angka5 = 5;

    num hasil = angka1 + angka2 + angka3 + int.parse(angka4) + angka5;
    print("num angka1 = 1");
    print("int angka2 = 2");
    print("double angka3 = 3");
    print("String angka4 = 4");
    print("dynamic angka5 = 5\n");
    
    print("Hasil dari penjumlahan 5 angka dengan variabek berbeda : $hasil");
}

void nomorDua() {
    //Luas Lingkaran (phi * R kuadrat)
    const phi_luas = 3.14;
    var r = 10;
    var hasil_luas = phi_luas * (r * r);
    print("r = $r");
    print("Luar Lingkaran : $hasil_luas");


    //Keliling Lingkaran (2 * phi * r)
    final phi_keliling = 3.14;
    var hasil_keliling = 2 * phi_keliling * r;
    print("Keliling Lingkaran : $hasil_keliling");
}

void nomorTiga() {
    var a = "Martin Grey"; //nama
    var b = 35;            //umur    
    var c = 83.5;          //berat badan
    var d = 151 / 100;     //tinggi badan
    var f;                 //Status berat badan

    var e = c / (d * d);  //hasil BMI

    if(e < 18.5) {
        f = "Kekurangan Berat badan";
    }
    if(e <= 24.9) {
        f = "Normal (ideal)";
    }
    if(e <= 29.9) {
        f = "Kelebihan Berat badan";
    }
    else {
        f = "Kegemukan";
    }
    print("Nama : $a\nUmur : $b\nBerat Badan : $c\nTinggi Badan : $d\nBMI : $e\nStatus Berat Badan : $f");

}

while (kerjakan == true) {
    tampilMenu();
    stdout.write("Masukan Nomor (1/2/3) : ");
    int inputnomor = int.parse(stdin.readLineSync()!);
    switch (inputnomor) {
        case 1 :
            nomorSatu(); 
            break;
        case 2 :
            nomorDua();
            break;
        case 3 :
            nomorTiga();
            break;
    }
}



}