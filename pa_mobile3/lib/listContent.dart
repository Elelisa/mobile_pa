import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());

class ListContent extends StatelessWidget {
  const ListContent({
    Key? key,
    required this.contentImage,
    required this.contentName,
    required this.contentDetails,
    required this.tinggiCont,
    required this.pesanContainer,
  }) : super(key: key);

  final String contentName;
  final String contentDetails;
  final String contentImage;
  final double tinggiCont;
  final Widget pesanContainer;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection('Pemesanan');
    final NameController namectrl = Get.find();

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: Container(
        width: (lebar / 2) - 10,
        height: tinggiCont,
        child: Column(children: [
          Container(
            width: (lebar / 2) - 10,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(contentImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Obx(
              () => Text(
                contentName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "hello",
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: switchctrl.switchValue.value
                      ? Color(0xff57483b)
                      : Color(0xfffef4e9),
                ),
              ),
            ),
          ),
          Container(
            width: (lebar / 2) - 20,
            child: Obx(
              () => Text(
                contentDetails,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "itim",
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: switchctrl.switchValue.value
                      ? Color(0xff57483b)
                      : Color(0xfffef4e9),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: pesanContainer,
          ),
        ]),
      ),
    );
  }
}
