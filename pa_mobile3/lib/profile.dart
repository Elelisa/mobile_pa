import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa_mobile3/getx_controller/counter_controller.dart';
import 'package:pa_mobile3/user_info_tile.dart';

final SwitchController switchctrl = Get.put(SwitchController());

class ProfilePage extends StatelessWidget {
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
        elevation: 0,
        centerTitle: true,
        title: Text('My Profile',
            style: TextStyle(
                fontFamily: 'quinger',
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(
                  color: Color(0xfffef4e9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            style: TextButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
          ),
        ],
      ),
      body: Obx(
        () => Container(
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              // Section 1 - Profile Picture Wrapper
              Obx(
                () => Container(
                  // color: Color(0xff435D6e),
                  color: switchctrl.switchValue.value
                      ? Color(0xff435d6e)
                      : Color(0xff778b96),
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: GestureDetector(
                    onTap: () {
                      print('Code to open file manager');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          margin: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100),
                            // Profile Picture
                            image: DecorationImage(
                                image: AssetImage('assets/makeup/makeup4.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Change Profile Picture',
                                style: TextStyle(
                                    fontFamily: 'itim',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfffef4e9))),
                            SizedBox(width: 8),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Section 2 - User Info Wrapper
              Container(
                margin: EdgeInsets.only(top: 24),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => UserInfoTile(
                        margin: EdgeInsets.only(bottom: 16),
                        label: 'Email',
                        value: 'reinazahradummy@gmail.com',
                        padding: EdgeInsets.all(10),
                        valueBackground: switchctrl.switchValue.value
                            ? Color(0xff435d6e)
                            : Color(0xff778b96),
                      ),
                    ),
                    Obx(
                      () => UserInfoTile(
                        margin: EdgeInsets.only(bottom: 16),
                        label: 'Full Name',
                        value: 'Reina Zahra Azizah',
                        padding: EdgeInsets.all(10),
                        valueBackground: switchctrl.switchValue.value
                            ? Color(0xff435d6e)
                            : Color(0xff778b96),
                      ),
                    ),
                    Obx(
                      () => UserInfoTile(
                        margin: EdgeInsets.only(bottom: 16),
                        label: 'Subscription Type',
                        value: 'Premium Subscription',
                        padding: EdgeInsets.all(10),
                        valueBackground: switchctrl.switchValue.value
                            ? Color(0xff435d6e)
                            : Color(0xff778b96),
                      ),
                    ),
                    Obx(
                      () => UserInfoTile(
                        margin: EdgeInsets.only(bottom: 16),
                        label: 'Subscription Time',
                        value: 'Until 22 Oct 2021',
                        padding: EdgeInsets.all(10),
                        valueBackground: switchctrl.switchValue.value
                            ? Color(0xff435d6e)
                            : Color(0xff778b96),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          color: switchctrl.switchValue.value
              ? Color(0xffe7dbca)
              : Color(0xff435d6e),
        ),
      ),
    );
  }
}
