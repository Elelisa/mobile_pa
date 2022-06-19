import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/getx_controller/counter_controller.dart';
import 'package:pa_mobile3/katalog.dart';
import 'package:pa_mobile3/landingPage.dart';
import 'package:pa_mobile3/pesanan.dart';
import 'package:pa_mobile3/profile.dart';
import 'package:pa_mobile3/riwayatPesanan.dart';
import 'package:pa_mobile3/setting.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff778b96),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              "Melahimy Wedding Organizer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "elegant",
                fontSize: 50,
                // fontWeight: FontWeight.bold,
                color: Color(0xfffef4e9),
              ),
            ),
            decoration: BoxDecoration(color: Color(0xff435d6e)),
          ),
          ListTile(
              title: MenuList(menu: "home"),
              onTap: () {
                Get.to(() => LandingPage());
              }),
          ListTile(
              title: MenuList(menu: "katalog"),
              onTap: () {
                Get.to(() => MyKatalog());
              }),
          ListTile(
              title: MenuList(menu: "order"),
              onTap: () {
                Get.to(() => Pesanan());
              }),
          ListTile(
              title: MenuList(menu: "riwayat"),
              onTap: () {
                Get.to(() => Riwayat());
              }),
          ListTile(
              title: MenuList(menu: "setting"),
              onTap: () {
                Get.to(() => SettPage());
              }),
          ListTile(
              title: MenuList(menu: "profile"),
              onTap: () {
                Get.to(() => ProfilePage());
              }),
          ListTile(
            title: MenuList(menu: "logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  MenuList({Key? key, required this.menu}) : super(key: key);

  final String menu;
  @override
  Widget build(BuildContext context) {
    return Text(
      menu,
      style: TextStyle(
          fontFamily: "hello",
          fontSize: 25,
          fontWeight: FontWeight.w200,
          color: Color(0xfffef4e9)),
    );
  }
}
