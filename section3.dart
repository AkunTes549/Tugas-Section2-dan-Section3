import 'dart:io';
import 'dart:math';
void main () {
  var kerjakan = true;


void tampilMenu() {
    print("======================================================================================");
    print("Tugas Section-3");
    print("======================================================================================");
    print("1. Buat program untuk menentukan nilai huruf dari angka 0-100");
    print("2. Buat program yang menampilkan bilangan 1-20 ");
    print("3. Aplikasi penghitung ");
    print("4. Aplikasi menebak angka");
}

void nomorSatu() {
  stdout.write("Masukan Nilai 1-100 : ");
  int nilai = int.parse(stdin.readLineSync()!);

  if (nilai >= 85 && nilai <=100 ) {
      print("A");
  }
  else if (nilai >= 70) {
      print("B");
  }
  else if (nilai >= 55) {
      print("C");
  }
  else if (nilai >= 0 ) {
      print("D");
  }
  else {
      print("Nilai yang anda input tidak valid! Masukan Nilai sesuai dengan persyaratan");
  }
}

void nomorDua() {

  for (int i = 1; i <= 20; i++) {

    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    }
    else if (i % 3 == 0) {
      print("Fizz");
    }
    else if (i % 5 == 0) {
      print("Buzz");
    }
    else {
      print(i);
    }
  }
}

void nomorTiga() {
      double jumlah = 0;
    double max = 0;
    double min = 0;

    for (int i = 1; i <= 5; i++) {
        stdout.write("Masukan Angka ke-$i : ");
        double angka = double.parse(stdin.readLineSync()!);

        jumlah = jumlah + angka;

        if (i == 1) {
            max = angka;
            min = angka;
        } else {
            if (angka > max) {
              max = angka;
        } else if (angka < min){
            min = angka;
        }
    }
}

    double rata = jumlah / 5;

    print("Jumlah : $jumlah");
    print("Rata-Rata : $rata");
    print("Max : $max");
    print("Min : $min");

}

void nomorEmpat() {
    Random random = Random();

  int angkaRahasia = random.nextInt(6);

  print("Tebak angka dari 0 sampai 5!");
  print("Masukkan tebakan: ");

  int tebakan = int.parse(stdin.readLineSync()!);

  if (tebakan == angkaRahasia) {
    print("Tebakan benar!");
  } else {
    print("Tebakan salah!");
    print("Angka yang benar adalah: $angkaRahasia");
  }

}

while(kerjakan == true) {
  tampilMenu();
  stdout.write("Masukan Nomor (1/2/3/4) : ");
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
    case 4 :
      nomorEmpat();
      break;
  }
}

}