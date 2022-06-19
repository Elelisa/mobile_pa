import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/drawer.dart';
import 'package:pa_mobile3/getx_controller/counter_controller.dart';
import 'package:pa_mobile3/gownPage.dart';
import 'package:pa_mobile3/cateringPage.dart';
import 'package:pa_mobile3/makeupPage.dart';
import 'package:pa_mobile3/souvenirPage.dart';
import 'package:pa_mobile3/venuePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final SwitchController switchctrl = Get.put(SwitchController());

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference users = firestore.collection('users');
    var lebar = MediaQuery.of(context).size.width;

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
          Obx(
            () => Container(
              color: switchctrl.switchValue.value
                  ? Color(0xfffef4e9)
                  : Color(0xff435d6e),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyMenu(
                          gambar: "assets/gown/wedgown1.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/gown/jawa1.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/gown/palembang3.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/gown/wedgown9.jpg",
                        ),
                        MoreContainer(
                          goto: GownPage(),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: lebar,
                      child: TitleText(tekstitle: "WEDDING GOWN"),
                    ),
                    onTap: () {
                      Get.to(() => GownPage());
                    },
                  ),
                  DescContainer(
                    tinggiContainer: 150,
                    lebarContainer: lebar,
                    teks:
                        "Berbagai macam pilihan gaun spesial untuk hari yang spesial. Gaun dengan desain elegant dan mewah dengan gaya modern juga dengan gaya sederhana khas dari berbagai adat di Indonesia. Pilih model gaun dan datang ke toko untuk melakukan fitting gaun. Dapat melakukan resize gaun ketika fitting.",
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyMenu(
                          gambar: "assets/venue/wedvenue1.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/venue/wedvenue2.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/venue/wedvenue3.jpg",
                        ),
                        MoreContainer(
                          goto: VenuePage(),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: lebar,
                      child: TitleText(tekstitle: "WEDDING VENUE"),
                    ),
                    onTap: () {
                      Get.to(() => VenuePage());
                    },
                  ),
                  DescContainer(
                    tinggiContainer: 100,
                    lebarContainer: lebar,
                    teks:
                        "Dekorasi venue pernikahan dengan gaya sederhana namun terlihat mewah. Dapat melakukan request warna untuk dekorasi venue. Pilihan venue untuk indoor dan outdoor dapat dilihat pada halamn wedding venue.",
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyMenu(
                          gambar: "assets/souvenir/souvenir1.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/souvenir/souvenir2.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/souvenir/souvenir3.jpg",
                        ),
                        MoreContainer(
                          goto: SouvenirPage(),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: lebar,
                      child: TitleText(tekstitle: "WEDDING SOUVENIR"),
                    ),
                    onTap: () {
                      Get.to(() => SouvenirPage());
                    },
                  ),
                  DescContainer(
                    tinggiContainer: 130,
                    lebarContainer: lebar,
                    teks:
                        "Pilih souvenir terunik dan menarik dihari istimewa anda. Kami menyediakan berbagai macam souvenir yang dapat diberi tulisan seperti gelas nama, sendok garpu dan masih banyak souvenir lainnya. Bisa request tulisan sesukamu.",
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyMenu(
                          gambar: "assets/food/wedfood1.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/food/wedfood2.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/food/wedfood3.jpg",
                        ),
                        MoreContainer(
                          goto: CateringPage(),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: lebar,
                      child: TitleText(tekstitle: "CATERING"),
                    ),
                    onTap: () {
                      Get.to(() => CateringPage());
                    },
                  ),
                  DescContainer(
                    tinggiContainer: 100,
                    lebarContainer: lebar,
                    teks:
                        "Pilih catering terbaik dihari istimewamu. Kami menyediakan berbagai macam catering untuk acara pernikahanmu. Berbagai macam catering yang tersedia di toko kami seperti dessert, buah, aneka makan berat dan lain sebagainya.",
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyMenu(
                          gambar: "assets/makeup/makeup1.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/makeup/makeup2.jpg",
                        ),
                        MyMenu(
                          gambar: "assets/makeup/makeup3.jpg",
                        ),
                        MoreContainer(
                          goto: MakeupPage(),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: lebar,
                      child: TitleText(tekstitle: "WEDDING MAKE UP"),
                    ),
                    onTap: () {
                      Get.to(() => MakeupPage());
                    },
                  ),
                  DescContainer(
                    tinggiContainer: 100,
                    lebarContainer: lebar,
                    teks:
                        "Pilih makeup tercantik dihari istimewamu. Kami menyediakan berbagai macam jenis makeup untuk pernikahanmu. Berbagai jenis makeup yang tersedia di toko kami seperti makeup hijab, non hijab, korea dan lain sebagainya.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  const MyMenu({Key? key, this.gambar, this.lebarContainer}) : super(key: key);

  final gambar;
  final lebarContainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(gambar),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.tekstitle}) : super(key: key);

  final String tekstitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Obx(
        () => Text(
          tekstitle,
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontFamily: "florena",
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: switchctrl.switchValue.value
                ? Color(0xff778b96)
                : Color(0xffe7dbca),
          ),
        ),
      ),
    );
  }
}

class DescContainer extends StatelessWidget {
  const DescContainer(
      {Key? key,
      required this.tinggiContainer,
      this.lebarContainer,
      required this.teks})
      : super(key: key);

  final double tinggiContainer;
  final lebarContainer;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: tinggiContainer,
      width: lebarContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Obx(
          () => Text(
            teks,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: "itim",
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
            ),
          ),
        ),
      ),
    );
  }
}

class MoreContainer extends StatelessWidget {
  const MoreContainer({Key? key, this.goto}) : super(key: key);

  final goto;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 200,
        height: 200,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 91),
          child: Text(
            "lihat lebih banyak",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "itim",
              decoration: TextDecoration.underline,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color(0xff778b96),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => goto),
        );
      },
    );
  }
}
