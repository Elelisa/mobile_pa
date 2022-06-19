import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/cateringPage.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:pa_mobile3/gownPage.dart';
import 'package:pa_mobile3/makeupPage.dart';
import 'package:pa_mobile3/souvenirPage.dart';
import 'package:pa_mobile3/venuePage.dart';

import 'getx_controller/counter_controller.dart';

final SwitchController switchctrl = Get.put(SwitchController());

class MyKatalog extends StatelessWidget {
  const MyKatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bg1.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          flexibleSpace: Obx(
            () => Container(
              color: switchctrl.switchValue.value
                  ? Color(0xff435d6e)
                  : Color(0xff778b96),
            ),
          ),
          title: Text(
            "Wedding App",
            style: TextStyle(
              fontFamily: "quinger",
              color: Color(0xfffef4e9),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 230,
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Color(0xfffef4e9)),
                    child: Image.asset(
                      "assets/splash/logo.png",
                    ),
                  ),
                ),
                KatalogMenu(
                  menu: "Wedding Gown",
                  newPage: GownPage(),
                ),
                KatalogMenu(
                  menu: "Wedding Venue",
                  newPage: VenuePage(),
                ),
                KatalogMenu(
                  menu: "Wedding Make Up",
                  newPage: MakeupPage(),
                ),
                KatalogMenu(
                  menu: "Catering",
                  newPage: CateringPage(),
                ),
                KatalogMenu(
                  menu: "Wedding Souvenir",
                  newPage: SouvenirPage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KatalogMenu extends StatelessWidget {
  const KatalogMenu({Key? key, required this.menu, required this.newPage})
      : super(key: key);

  final String menu;
  final newPage;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50),
      child: GestureDetector(
        child: Obx(
          () => Container(
            width: lebar - 100,
            height: 50,
            decoration: BoxDecoration(
              color: switchctrl.switchValue.value
                  ? Color(0xffe7dbca)
                  : Color(0xff778b96),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                menu,
                style: TextStyle(
                  color: switchctrl.switchValue.value
                      ? Color(0xff57483b)
                      : Color(0xfffef4e9),
                  fontFamily: "itim",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => newPage),
          );
        },
      ),
    );
  }
}
