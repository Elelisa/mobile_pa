import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:pa_mobile3/listContent.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());

class SouvenirPage extends StatelessWidget {
  const SouvenirPage({Key? key}) : super(key: key);

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
          "Wedding Souvenir",
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
                      contentImage: "assets/souvenir/souvenir7.jpg",
                      contentName: "Paket Souvenir 1",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp1.000.000 \nKeterangan : harga per 50pcs \n*include : kartu ucapan, kemasan plastik, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName1.value,
                          );
                        },
                      ),
                      //20k
                    ),
                    ListContent(
                      contentImage: "assets/souvenir/souvenir2.jpg",
                      contentName: "Paket Souvenir 2",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp1.000.000 \nKeterangan : harga per 25pcs \n*include : kartu ucapan, kemasan kayu, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName2.value,
                          );
                        },
                      ),
                      //40k
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/souvenir/souvenir3.jpg",
                      contentName: "Paket Souvenir 3",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp500.000 \nKeterangan : harga per 50pcs \n*include : kartu ucapan, kemasan, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName3.value,
                          );
                        },
                      ),
                      //10k
                    ),
                    ListContent(
                      contentImage: "assets/souvenir/souvenir4.jpg",
                      contentName: "Paket Souvenir 4",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp500.000 \nKeterangan : harga per 20pcs \n*include : kartu ucapan, kemasan, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName4.value,
                          );
                        },
                      ),
                      //25k
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/souvenir/souvenir5.jpg",
                      contentName: "Paket Souvenir 5",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp1.000.000 \nKeterangan : harga per 25pcs \n*include : kartu ucapan, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName5.value,
                          );
                        },
                      ),
                      //40k
                    ),
                    ListContent(
                      contentImage: "assets/souvenir/souvenir6.jpg",
                      contentName: "Paket Souvenir 6",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp1.000.000 \nKeterangan : harga per 20pcs \n*include : kartu ucapan, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName6.value,
                          );
                        },
                      ),
                      //50k
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/souvenir/souvenir9.jpg",
                      contentName: "Paket Souvenir 7",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp500.000 \nKeterangan : harga per 50pcs \n*include : kartu ucapan, kemasan bening, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName7.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/souvenir/souvenir10.jpg",
                      contentName: "Paket Souvenir 8",
                      tinggiCont: 400,
                      contentDetails:
                          "Harga : Rp500.000 \nKeterangan : harga per 25pcs \n*include : kartu ucapan, kemasan bening, tas",
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
                          pesanctrl.souvenirPesanan.add(
                            namectrl.souvenirName8.value,
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
