import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/listContent.dart';
import 'package:pa_mobile3/drawer.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());

class MakeupPage extends StatelessWidget {
  const MakeupPage({Key? key}) : super(key: key);

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
          "Wedding Make Up",
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
                      contentImage: "assets/makeup/makeup1.jpg",
                      contentName: "Style Make Up 1",
                      tinggiCont: 350,
                      contentDetails: "Harga : 50.000.000 \nStyle : Natural",
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
                          pesanctrl.makeupPesanan.add(
                            namectrl.makeupName1.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/makeup/makeup2.jpg",
                      contentName: "Style Make Up 2",
                      tinggiCont: 350,
                      contentDetails: "Harga : 40.000.000 \nStyle : Elegant",
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
                          pesanctrl.makeupPesanan.add(
                            namectrl.makeupName2.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/makeup/makeup3.jpg",
                      contentName: "Style Make Up 3",
                      tinggiCont: 350,
                      contentDetails: "Harga : 35.000.000 \nStyle : Hijab",
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
                          pesanctrl.makeupPesanan.add(
                            namectrl.makeupName3.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/makeup/makeup4.jpg",
                      contentName: "Style Make Up 4",
                      tinggiCont: 350,
                      contentDetails: "Harga : 30.000.000 \nStyle : Gold",
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
                          pesanctrl.makeupPesanan.add(
                            namectrl.makeupName4.value,
                          );
                        },
                      ),
                    ),
                  ]),
                  Row(children: [
                    ListContent(
                      contentImage: "assets/makeup/makeup5.jpg",
                      contentName: "Style Make Up 5",
                      tinggiCont: 350,
                      contentDetails: "Harga : 25.000.000 \nStyle : Fresh",
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
                          pesanctrl.makeupPesanan.add(
                            namectrl.makeupName5.value,
                          );
                        },
                      ),
                    ),
                    ListContent(
                      contentImage: "assets/makeup/makeup6.jpg",
                      contentName: "Style Make Up 6",
                      tinggiCont: 350,
                      contentDetails: "Harga : 20.000.000 \nStyle : India",
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
                          pesanctrl.makeupPesanan.add(
                            namectrl.makeupName6.value,
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
