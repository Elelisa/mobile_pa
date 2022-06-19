import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());

class Pesanan extends StatelessWidget {
  Pesanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference Pemesanan = firestore.collection('Pemesanan');

    return Scaffold(
      // backgroundColor: Color(0xfffef4e9),
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: switchctrl.switchValue.value
                ? Color(0xff435d6e)
                : Color(0xff778b96),
          ),
        ),
        title: Text(
          "Order",
          style: TextStyle(
            fontFamily: "quinger",
            color: Color(0xfffef4e9),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Obx(
        () => Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "Daftar Pesanan:-------",
                style: TextStyle(
                  color: switchctrl.switchValue.value
                      ? Color(0xff57483b)
                      : Color(0xfffef4e9),
                  fontFamily: "itim",
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListPesanan(
                  namapesanan: 'Gown Pesanan : ${pesanctrl.gownPesanan.value}'),
              ListPesanan(
                  namapesanan:
                      'Venue Pesanan : ${pesanctrl.venuePesanan.value}'),
              ListPesanan(
                  namapesanan:
                      'Make Up Pesanan : ${pesanctrl.makeupPesanan.value}'),
              ListPesanan(
                  namapesanan:
                      'Catering Pesanan : ${pesanctrl.cateringPesanan.value}'),
              ListPesanan(
                  namapesanan:
                      'Souvenir Pesanan : ${pesanctrl.souvenirPesanan.value}'),
              ElevatedButton(
                onPressed: () async => await launch(
                    "https://wa.me/6285250931696?text=Halo saya mau pesan: \nNama Pesanan: 'Gown Pesanan : ${pesanctrl.gownPesanan.value}'\n'Venue Pesanan : ${pesanctrl.venuePesanan.value}'\n'Make Up Pesanan : ${pesanctrl.makeupPesanan.value}'\n'Catering Pesanan : ${pesanctrl.cateringPesanan.value}'\n'Souvenir Pesanan : ${pesanctrl.souvenirPesanan.value}'"),
                child: Text('Open Whatsapp'),
              ),
              GestureDetector(
                child: Obx(
                  () => Container(
                    width: (lebar / 2) - 15,
                    height: 40,
                    decoration: BoxDecoration(
                      color: switchctrl.switchValue.value
                          ? Color(0xff57483b)
                          : Color(0xff778b96),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Lanjutkan",
                        style: TextStyle(
                            fontFamily: "itim",
                            fontSize: 20,
                            color: Color(0xffe7dbca)),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Pemesanan.add({
                    'Catering_pesanan': pesanctrl.cateringPesanan.value,
                    'Gown_pesanan': pesanctrl.gownPesanan.value,
                    'Makeup_pesanan': pesanctrl.makeupPesanan.value,
                    'Souvenir_pesanan': pesanctrl.souvenirPesanan.value,
                    'Venue_pesanan': pesanctrl.venuePesanan.value,
                  });
                  CustomAlert(
                    context,
                    "Pesanan Anda Telah Disimpan!",
                  );
                },
              ),
            ],
          ),
          color: switchctrl.switchValue.value
              ? Color(0xfffef4e9)
              : Color(0xff435d6e),
        ),
      ),
    );
  }
}

class ListPesanan extends StatelessWidget {
  const ListPesanan({Key? key, required this.namapesanan}) : super(key: key);
  final String namapesanan;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        namapesanan,
        textAlign: TextAlign.justify,
        style: TextStyle(
            color: switchctrl.switchValue.value
                ? Color(0xff57483b)
                : Color(0xfffef4e9),
            fontFamily: "itim",
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.black54,
        title: Text(
          "Konfirmasi",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        content: Text(
          pesan,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              pesanctrl.gownPesanan.clear();
              Get.back();
            },
            child: const Text("OK"),
          ),
        ],
      );
    },
  );
}
