import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/getx_controller/counter_controller.dart';
import 'package:pa_mobile3/profile.dart';

class SettPage extends StatelessWidget {
  const SettPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    final SwitchController switchctrl = Get.put(SwitchController());
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: switchctrl.switchValue.value
                ? Color(0xff435d6e)
                : Color(0xff778b96),
          ),
        ),
        title: const Text(
          "Setting",
          style: TextStyle(
            fontFamily: "quinger",
            color: Color(0xfffef4e9),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Obx(
          () => Container(
            color: switchctrl.switchValue.value
                ? Color(0xfffef4e9)
                : Color(0xff435d6e),
            child: ListView(
              children: [
                Column(
                  children: const [
                    SizedBox(
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                ListTile(
                  title: const ListSett(isActive: false, teks: "Profile"),
                  onTap: () {
                    Get.to(() => ProfilePage());
                  },
                ),
                Center(
                  child: Container(
                    width: lebar - 33,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff778b96),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(
                          () => TextMenu(
                              settingmenu: switchctrl.switchValue.value
                                  ? "Dark Mode"
                                  : "Light Mode"),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Obx(
                            () => Switch(
                              value: switchctrl.switchValue.value,
                              onChanged: (Value) {
                                switchctrl.switchValue(Value);
                              },
                              thumbColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff435d6e)),
                              trackColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xfffef4e9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: const ListSett(isActive: false, teks: "Notifikasi"),
                  onTap: () {
                    Get.to(() => Notif());
                  },
                ),
                ListTile(
                  title: const ListSett(
                      isActive: false, teks: "Syarat & Ketentuan"),
                  onTap: () {
                    Get.to(() => SyaratKetentuan());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListSett extends StatelessWidget {
  const ListSett({Key? key, required this.isActive, required this.teks})
      : super(key: key);

  final bool isActive;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      height: 50,
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xfffef4e9) : const Color(0xff778b96),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        teks,
        style: TextStyle(
          fontSize: 20,
          fontFamily: "itim",
          fontWeight: FontWeight.w500,
          color: isActive ? Colors.black : const Color(0xffffffff),
        ),
      ),
    );
  }
}

class Notif extends StatelessWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class SyaratKetentuan extends StatelessWidget {
  const SyaratKetentuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: switchctrl.switchValue.value
                ? Color(0xff435d6e)
                : Color(0xff778b96),
          ),
        ),
        title: const Text(
          "Syarat dan Ketentuan",
          style: TextStyle(
            fontFamily: "quinger",
            color: Color(0xfffef4e9),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Obx(
        () => Container(
          child: ListView(
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "Syarat & Ketentuan Penggunaan Aplikasi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: switchctrl.switchValue.value
                            ? Color(0xff57483b)
                            : Color(0xfffef4e9),
                        fontWeight: FontWeight.bold,
                        fontFamily: "hello"),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
                        width: 999,
                        height: 999,
                        child: const MyListBullets(),
                      ),
                    ),
                  ),
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

class MyListBullets extends StatelessWidget {
  const MyListBullets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => ListTile(
            leading: MyBullets(),
            title: Text(
              "Aplikasi Melahimy Wedding hanya dapat digunakan pada Android",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: switchctrl.switchValue.value
                    ? Color(0xff57483b)
                    : Color(0xfffef4e9),
                fontWeight: FontWeight.w600,
                fontFamily: "itim",
              ),
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Aplikasi Melahimy Wedding hanya digunakan untuk layanan yang tersedia saja",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Aplikasi Melahimy Wedding tidak boleh disalahgunakan untuk menipu, merugikan orang lain, dan/atau menimbulkan ketidaknyamanan kepada pihak-pihak lain",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Pengguna Aplikasi Melahimy Wedding tidak diperbolehkan mengubah isi situs dan/atau Aplikasi Melahimy Wedding untuk tujuan apapun",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Pengguna dihimbau untuk menggunakan Aplikasi Melahimy Wedding sebagaimana mestinya",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Aplikasi Melamihy Wedding hanya dapat digunakan untuk memesan saja",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Aplikasi Melahimy Wedding tidak melayani pembayaran secara online, baik transfer maupun sebagainya melainkan harus cash langsung ke toko",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
        ListTile(
          leading: MyBullets(),
          title: Text(
            "Aplikasi Melahimy Wedding juga melayani fitting baju secara offline di toko, tidak melalui aplikasi ini",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: switchctrl.switchValue.value
                  ? Color(0xff57483b)
                  : Color(0xfffef4e9),
              fontWeight: FontWeight.w600,
              fontFamily: "itim",
            ),
          ),
        ),
      ],
    );
  }
}

class MyBullets extends StatelessWidget {
  const MyBullets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: switchctrl.switchValue.value
            ? Color(0xff57483b)
            : Color(0xfffef4e9),
        shape: BoxShape.circle,
      ),
    );
  }
}

class TextMenu extends StatelessWidget {
  const TextMenu({Key? key, required this.settingmenu}) : super(key: key);
  final String settingmenu;
  @override
  Widget build(BuildContext context) {
    return Text(
      settingmenu,
      style: TextStyle(
        fontSize: 20,
        fontFamily: "itim",
        fontWeight: FontWeight.w500,
        color: const Color(0xffffffff),
      ),
    );
  }
}
