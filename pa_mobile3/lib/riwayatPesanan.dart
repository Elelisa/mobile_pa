import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());
final PesananController pesanctrl = Get.put(PesananController());
FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference Pemesanan = firestore.collection('Pemesanan');
final NameController namectrl = Get.find();

class Riwayat extends StatelessWidget {
  Riwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;

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
          "Riwayat Pemesanan",
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
        () => SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Text(
                  "Riwayat Pemesanan Melahimy",
                  style: TextStyle(
                    color: switchctrl.switchValue.value
                        ? Color(0xff57483b)
                        : Color(0xfffef4e9),
                    fontFamily: "itim",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                StreamBuilder<QuerySnapshot>(
                    stream: Pemesanan.snapshots(),
                    builder: (_, snapshot) {
                      return (snapshot.hasData)
                          ? Column(
                              children: snapshot.data!.docs.map((e) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount:
                                              e.get("Catering_pesanan").length,
                                          itemBuilder: (context, index) {
                                            return Text(e.get(
                                                "Catering_pesanan")[index]);
                                          }),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount:
                                              e.get("Gown_pesanan").length,
                                          itemBuilder: (context, index) {
                                            return Text(
                                                e.get("Gown_pesanan")[index]);
                                          }),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount:
                                              e.get("Makeup_pesanan").length,
                                          itemBuilder: (context, index) {
                                            return Text(
                                                e.get("Makeup_pesanan")[index]);
                                          }),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount:
                                              e.get("Souvenir_pesanan").length,
                                          itemBuilder: (context, index) {
                                            return Text(e.get(
                                                "Souvenir_pesanan")[index]);
                                          }),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount:
                                              e.get("Venue_pesanan").length,
                                          itemBuilder: (context, index) {
                                            return Text(
                                                e.get("Venue_pesanan")[index]);
                                          }),
                                      IconButton(
                                          onPressed: () {
                                            Pemesanan.doc(e.id).delete();
                                          },
                                          icon: Icon(Icons.delete_forever)),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                );
                              }).toList(),
                            )
                          : Text("siuuuu");
                    }),
              ],
            ),
            color: switchctrl.switchValue.value
                ? Color(0xfffef4e9)
                : Color(0xff435d6e),
          ),
        ),
      ),
    );
  }
}

class RiwayatPesan extends StatelessWidget {
  const RiwayatPesan({Key? key, required this.namapesanan}) : super(key: key);
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
