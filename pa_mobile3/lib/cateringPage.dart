import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:pa_mobile3/listContent.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());

class CateringPage extends StatelessWidget {
  CateringPage({Key? key}) : super(key: key);
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
          "Wedding Catering",
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
              Column(children: [
                Row(
                  children: [
                    ListContent(
                      contentImage: "assets/food/wedfood1.jpg",
                      contentName: namectrl.cateringName1.value,
                      tinggiCont: 480,
                      contentDetails:
                          "Menu : Nasi Goreng, Sop Kimlo, Nasi Putih, Ayam Bakar, Ikan Saos Nanas, Puding, Kerupuk, Aneka Buah, Gratis Air Mineral \nHarga : Rp30.000.000 \nPorsi : 500 orang",
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
                          pesanctrl.cateringPesanan.add(
                            namectrl.cateringName1.value,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                ListContent(
                  contentImage: "assets/food/wedfood2.jpg",
                  contentName: namectrl.cateringName2.value,
                  tinggiCont: 480,
                  contentDetails:
                      "Menu : Nasi Goreng, Sop Kimlo, Nasi Putih, Ikan Bakar, Sate Kambing, Karedok, Puding, Kerupuk, Aneka Buah, Gratis Air Mineral \nHarga : Rp25.000.000 \nPorsi : 500 Orang",
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
                      pesanctrl.cateringPesanan.add(
                        namectrl.cateringName2.value,
                      );
                    },
                  ),
                ),
              ]),
              Row(children: [
                ListContent(
                  contentImage: "assets/food/wedfood3.jpg",
                  contentName: namectrl.cateringName3.value,
                  tinggiCont: 480,
                  contentDetails:
                      "Menu : Nasi Goreng, Rendang, Nasi Putih, Ikan Bumbu Bali, Ayam Bumbu Bali, Karedok, Puding, Kerupuk, Aneka Buah, Gratis Air Mineral \nHarga : Rp20.000.000 \nPorsi : 500 Orang",
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
                      pesanctrl.cateringPesanan.add(
                        namectrl.cateringName3.value,
                      );
                    },
                  ),
                ),
                ListContent(
                  contentImage: "assets/food/wedfood4.jpg",
                  contentName: namectrl.cateringName4.value,
                  tinggiCont: 480,
                  contentDetails:
                      "Menu : Nasi Goreng, Rendang, Nasi Putih, Ayam Pedas Manis, Rawon, Gado-Gado, Sop Buah, Kerupuk, Aneka Buah, Gratis Air Mineral \nHarga : Rp15.000.000 \nPorsi : 500 Orang",
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
                      pesanctrl.cateringPesanan.add(
                        namectrl.cateringName4.value,
                      );
                    },
                  ),
                ),
              ]),
              Row(children: [
                ListContent(
                  contentImage: "assets/food/wedfood5.jpg",
                  contentName: namectrl.cateringName5.value,
                  tinggiCont: 480,
                  contentDetails:
                      "Menu : Nasi Goreng, Soto Ayam, Nasi Putih, Ikan Saos Nanas, Ayam Bumbu Bali, Sop Buah, Kerupuk, Aneka Buah, Gratis Air Mineral \nHarga : Rp15.000.000 \nPorsi : 500 Orang",
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
                      pesanctrl.cateringPesanan.add(
                        namectrl.cateringName5.value,
                      );
                    },
                  ),
                ),
                ListContent(
                  contentImage: "assets/food/wedfood6.jpg",
                  contentName: namectrl.cateringName6.value,
                  tinggiCont: 480,
                  contentDetails:
                      "Menu : Nasi Goreng, Ikan Saos, Nasi Putih, Pecel Lele, Ayam Bumbu Bali, Karedok, Sop Buah, Puding, Kerupuk, Aneka Buah, Gratis Air Mineral \nHarga : Rp10.000.000 \nPorsi : 500 Orang",
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
                      pesanctrl.cateringPesanan.add(
                        namectrl.cateringName6.value,
                      );
                    },
                  ),
                ),
              ]),
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
