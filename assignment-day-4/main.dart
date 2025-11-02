import 'dart:io';

List<Map<String, dynamic>> dataKaryawan = [
  {
    'nama': 'Alice',
    'departemen': 'Pengembangan',
    'skorKinerja': 4.5,
    'jumlahProyek': 8,
    'tahunGabung': '2022',
    'statusPelatihan': true,
    'gajiPokok': 7000000
  },
  {
    'nama': 'Bob',
    'departemen': 'Pemasaran',
    'skorKinerja': 3.8,
    'jumlahProyek': 5,
    'tahunGabung': '2021',
    'statusPelatihan': false,
    'gajiPokok': 6500000 
  },
  {
    'nama': 'Charlie',
    'departemen': 'Pengembangan',
    'skorKinerja': 4.9,
    'jumlahProyek': 10,
    'tahunGabung': '2023',
    'statusPelatihan': true,
    'gajiPokok': 8000000
  },
  {
    'nama': 'Diana',
    'departemen': 'HR',
    'skorKinerja': 4.2,
    'jumlahProyek': 3,
    'tahunGabung': '2022',
    'statusPelatihan': true,
    'gajiPokok': 6000000
  },
  {
    'nama': 'Eve',
    'departemen': 'Pemasaran',
    'skorKinerja': 3.5,
    'jumlahProyek': 6,
    'tahunGabung': '2023',
    'statusPelatihan': false,
    'gajiPokok': 6200000
  },
  {
    'nama': 'Frank',
    'departemen': 'Pengembangan',
    'skorKinerja': 4.7,
    'jumlahProyek': 9,
    'tahunGabung': '2021',
    'statusPelatihan': true,
    'gajiPokok': 7500000
  },
  {
    'nama': 'Grace',
    'departemen': 'HR',
    'skorKinerja': 3.0,
    'jumlahProyek': 2,
    'tahunGabung': '2024',
    'statusPelatihan': false,
    'gajiPokok': 5800000
  },
  {
    'nama': 'Heidi',
    'departemen': 'Pengembangan',
    'skorKinerja': 4.1,
    'jumlahProyek': 7,
    'tahunGabung': '2022',
    'statusPelatihan': true,
    'gajiPokok': 7200000
  },
];

int total_gaji(){
  int totalGaji = 0;
  for (var karyawan in dataKaryawan){
    totalGaji += karyawan['gajiPokok'] as int;
  }
  return totalGaji;
}

List<String> skor_kinerja(){
  List<String> karyawanBaik = [];
  for(int i = 0; i <  dataKaryawan.length; i++){
    if(dataKaryawan[i]['skorKinerja'] > 4.0){
      karyawanBaik.add(dataKaryawan[i]['nama']);
    }
  }
  return karyawanBaik;
}

int belum_pelatihan(){
  int jumlahKaryawan = 0;
  for(int i = 0; i < dataKaryawan.length; i++){
    if(dataKaryawan[i]['statusPelatihan'] == false){
      jumlahKaryawan++;
    }
  }
  return jumlahKaryawan;
}

bool skor_sempurna(){
  bool skorSempurna = false;
  int i = 0;
  while(i < dataKaryawan.length){
    if(dataKaryawan[i]['skorKinerja'] == 5.0){
      skorSempurna = true;
    }
    i++;
  }
  return skorSempurna;
}

void laporan_ringkas() {
  for (var karyawan in dataKaryawan) {
    print('{nama: ${karyawan['nama']}, '
          'departemen: ${karyawan['departemen']}, '
          'skorKinerja: ${karyawan['skorKinerja']}}');
  }
}

double skor_rata_rata_proyek(){
  int totalProyek = 0;
  int i = 0;
  do {
    totalProyek += dataKaryawan[i]['jumlahProyek'] as int;
    i++;
  } while (i < dataKaryawan.length);
  double rataRata = totalProyek / dataKaryawan.length;
  return rataRata;
}

List<String> proyek_diatas_rata_rata(){
  List<String> karyawanBanyakProyek = [];
  double rataRata = skor_rata_rata_proyek();
  for(var karyawan in dataKaryawan){
    if((karyawan['jumlahProyek'] as int) > rataRata){
      karyawanBanyakProyek.add(karyawan['nama'] as String);
    }
  }
  return karyawanBanyakProyek;
}

List<String> list_belum_pelatihan(){
  List<String> karyawanBelumPelatihan = [];
  for(var karyawan in dataKaryawan){
    if(karyawan['statusPelatihan'] == false){
      karyawanBelumPelatihan.add(karyawan['nama'] as String);
    }
  }
  return karyawanBelumPelatihan;
}
void main(){
  stdout.write("1. Total gaji pokok karyawan: Rp ${total_gaji()}\n");
  stdout.write("2. Karyawan dengan skor kinerja di atas 4.0: ${skor_kinerja()}\n");
  stdout.write("3. Jumlah karyawan yang belum mengikuti pelatihan: ${belum_pelatihan()}\n");
  stdout.write("4. Ada karyawan dengan skor sempurna: ${skor_sempurna() ? 'Ya' : 'Tidak'}\n");
  stdout.write("5. Laporan ringkas karyawan: \n");
  laporan_ringkas();
  stdout.write("6. Rata-rata jumlah proyek per karyawan: ${skor_rata_rata_proyek()}\n");
  stdout.write("7. Karyawan dengan jumlah proyek di atas rata-rata: ${proyek_diatas_rata_rata()}\n");
  stdout.write("8. Daftar karyawan yang belum mengikuti pelatihan: ${list_belum_pelatihan()}\n");
}