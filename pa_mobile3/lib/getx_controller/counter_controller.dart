import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchController extends GetxController {
  var switchValue = false.obs;
}

class NameController extends GetxController {
  //catering
  var cateringName1 = "Paket Catering 1".obs;
  var cateringName2 = "Paket Catering 2".obs;
  var cateringName3 = "Paket Catering 3".obs;
  var cateringName4 = "Paket Catering 4".obs;
  var cateringName5 = "Paket Catering 5".obs;
  var cateringName6 = "Paket Catering 6".obs;

  //gown
  var gownName1 = "Gaun Modern 1".obs;
  var gownName2 = "Gaun Modern 2".obs;
  var gownName3 = "Gaun Modern 3".obs;
  var gownName4 = "Gaun Jawa 1".obs;
  var gownName5 = "Gaun Palembang 3".obs;
  var gownName6 = "Gaun Minang 3".obs;

  //venue
  var venueName1 = "Gedung Pertemuan Balai Sudirman".obs;
  var venueName2 = "Gedung Kesenian".obs;
  var venueName3 = "Gedung Pramuka".obs;
  var venueName4 = "Gedung Serbaguna Karya Komura".obs;
  var venueName5 = "Gedung Taman Budaya".obs;
  var venueName6 = "Aula MTS Model".obs;
  var venueName7 = "Gedung Islamic Center".obs;
  var venueName8 = "Gedung BKOW Lembuswana".obs;

  //souvenir
  var souvenirName1 = "Paket Souvenir 1".obs;
  var souvenirName2 = "Paket Souvenir 2".obs;
  var souvenirName3 = "Paket Souvenir 3".obs;
  var souvenirName4 = "Paket Souvenir 4".obs;
  var souvenirName5 = "Paket Souvenir 5".obs;
  var souvenirName6 = "Paket Souvenir 6".obs;
  var souvenirName7 = "Paket Souvenir 7".obs;
  var souvenirName8 = "Paket Souvenir 8".obs;

  //makeup
  var makeupName1 = "Style Make Up 1".obs;
  var makeupName2 = "Style Make Up 2".obs;
  var makeupName3 = "Style Make Up 3".obs;
  var makeupName4 = "Style Make Up 4".obs;
  var makeupName5 = "Style Make Up 5".obs;
  var makeupName6 = "Style Make Up 6".obs;
}

class PesananController extends GetxController {
  RxList gownPesanan = [].obs;
  RxList cateringPesanan = [].obs;
  RxList venuePesanan = [].obs;
  RxList souvenirPesanan = [].obs;
  RxList makeupPesanan = [].obs;
}

// class Pesanan {
//   String gownPesanan;
//   int jumlahGown;
//   String cateringPesanan;
//   int jumlahCatering;
//   String venuePesanan;
//   int jumlahVenue;
//   String souvenirPesanan;
//   int jumlahSouvenir;
//   String makeupPesanan;
//   int jumlahMakeup;
  
//   Pesanan(
//       {required this.gownPesanan,
//       required this.jumlahGown,
//       required this.souvenirPesanan,
//       required this.jumlahSouvenir,
//       required this.cateringPesanan,
//       required this.jumlahCatering,
//       required this.makeupPesanan,
//       required this.jumlahMakeup,
//       required this.venuePesanan,
//       required this.jumlahVenue});
// }

// class PesananController extends GetxController {
//   var jumlahGown = 0.obs;
//   var jumlahSouvenir = 0.obs;
//   var jumlahMakeup = 0.obs;
//   var jumlahCatering = 0.obs;
//   var jumlahVenue = 0.obs;

//   tambahGown() => jumlahGown++;
//   tambahSouvenir() => jumlahSouvenir++;
//   tambahMakeup() => jumlahMakeup++;
//   tambahCatering() => jumlahCatering++;
//   tambahVenue() => jumlahVenue++;
// }
