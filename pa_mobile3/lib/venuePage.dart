import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:pa_mobile3/listContent.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());

class VenuePage extends StatelessWidget {
  VenuePage({Key? key}) : super(key: key);
  final NameController namectrl = Get.put(NameController());

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection('Pemesanan');
    final NameController namectrl = Get.find();
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: switchctrl.switchValue.value
                ? Color(0xff435d6e)
                : Color(0xff778b96),
          ),
        ),
        title: Text(
          "Wedding Venue",
          style: TextStyle(
            fontFamily: "quinger",
            color: Color(0xfffef4e9),
            fontSize: 30,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Obx(
        () => Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Row(children: [
                    ListContent(
                      contentImage: "assets/venue/wedvenue1.jpg",
                      contentName: namectrl.venueName1.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Jenderal Sudirman No. 18, Balikpapan Kota \nKapasitas : 500 Orang \nHarga : Rp7.000.000 \nKeterangan : Untuk 1 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName1.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/venue/wedvenue2.jpg",
                      contentName: namectrl.venueName2.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Syarifuddin Yoes, Balikpapan Selatan \nKapasitas : 600 Orang \nHarga : Rp7.000.000 \nKeterangan : Untuk 1 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName2.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/venue/wedvenue3.jpg",
                      contentName: namectrl.venueName3.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. M. Yamin No. 6, Samarinda Ulu \nKapasitas : 600 Orang \nHarga : Rp9.000.000 \nKeterangan : Untuk 1 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName3.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/venue/wedvenue4.jpg",
                      contentName: namectrl.venueName4.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Pattimura, Samarinda Seberang \nKapasitas : 500 Orang \nHarga : Rp25.000.000 \nKeterangan : Untuk 2 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName4.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/venue/wedvenue5.jpg",
                      contentName: namectrl.venueName5.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Kemakmuran, Sungai Pinang, Kota Samarinda \nKapasitas : 600 Orang \nHarga : Rp7.500.000 \nKeterangan : Untuk 1 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName5.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/venue/wedvenue6.jpg",
                      contentName: namectrl.venueName6.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Harmonika No. 100, Samarinda Kota \nKapasitas : 500 Orang \nHarga : Rp4.000.000 \nKeterangan : Untuk 1 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName6.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/venue/wedvenue7.jpg",
                      contentName: namectrl.venueName7.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Slamet Riyadi No. 1, Samarinda Ilir \nKapasitas : 800 Orang \nHarga : Rp10.000.000 \nKeterangan : Untuk 1 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName7.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/venue/wedvenue8.jpg",
                      contentName: namectrl.venueName8.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Alamat : Jl. Mayor Jendral S. Parman No. 28, Samarinda Ulu \nKapasitas : 800 Orang \nHarga : Rp26.000.000 \nKeterangan : Untuk 2 hari",
                      pesanContainer: GestureDetector(
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
                                "Pesan",
                                style: TextStyle(
                                    fontFamily: "itim",
                                    fontSize: 20,
                                    color: Color(0xffe7dbca)),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          pesanctrl.venuePesanan.add(
                            namectrl.venueName8.value,
                          );
                        },
                      ),
                    ),
                  ]),
                ],
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
