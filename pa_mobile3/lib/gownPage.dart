import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:pa_mobile3/listContent.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());

class GownPage extends StatelessWidget {
  GownPage({Key? key}) : super(key: key);

  final NameController namectrl = Get.put(NameController());

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference pesanan = firestore.collection('Pemesanan');
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
            "Wedding Gown",
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
            child: ListView(children: [
              Column(
                children: [
                  Row(children: [
                    ListContent(
                      contentImage: "assets/gown/wedgown1.jpg",
                      contentName: namectrl.gownName1.value,
                      tinggiCont: 350,
                      contentDetails: "Harga : 50.000.000 \nUkuran : Fit to XL",
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
                          pesanctrl.gownPesanan.add(
                            namectrl.gownName1.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/gown/wedgown2.jpg",
                      contentName: namectrl.gownName2.value,
                      tinggiCont: 350,
                      contentDetails: "Harga : 30.000.000 \nUkuran : Fit to XL",
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
                          pesanctrl.gownPesanan.add(
                            namectrl.gownName2.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/gown/wedgown9.jpg",
                      contentName: namectrl.gownName3.value,
                      tinggiCont: 350,
                      contentDetails: "Harga : 25.000.000 \nUkuran : Fit to Xl",
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
                          pesanctrl.gownPesanan.add(
                            namectrl.gownName3.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/gown/jawa1.jpg",
                      contentName: namectrl.gownName4.value,
                      tinggiCont: 350,
                      contentDetails: "Harga : 20.000.000 \nUkuran : Fit to XL",
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
                          pesanctrl.gownPesanan.add(
                            namectrl.gownName4.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/gown/palembang3.jpg",
                      contentName: namectrl.gownName5.value,
                      tinggiCont: 350,
                      contentDetails: "Harga : 25.000.000 \nUkuran : Fit to XL",
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
                          pesanctrl.gownPesanan.add(
                            namectrl.gownName5.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/gown/minang3.jpeg",
                      contentName: namectrl.gownName6.value,
                      tinggiCont: 350,
                      contentDetails: "Harga : 30.000.000 \nUkuran : Fit to XL",
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
                          pesanctrl.gownPesanan.add(
                            namectrl.gownName6.value,
                          );
                        },
                      ),
                    ),
                  ]),
                ],
              ),
            ]),
            color: switchctrl.switchValue.value
                ? Color(0xfffef4e9)
                : Color(0xff435d6e),
          ),
        ));
  }
}
