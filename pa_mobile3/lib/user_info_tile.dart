import 'package:flutter/material.dart';
import 'AppColor.dart';
import 'getx_controller/counter_controller.dart';
import 'package:get/get.dart';

class UserInfoTile extends StatelessWidget {
  final String label, value;
  final EdgeInsetsGeometry margin, padding;
  final Color valueBackground;
  UserInfoTile(
      {required this.label,
      required this.value,
      required this.padding,
      required this.margin,
      required this.valueBackground});

  @override
  Widget build(BuildContext context) {
    final SwitchController switchctrl = Get.put(SwitchController());
    return Container(
      margin: margin,
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('$label',
                  style: TextStyle(
                    fontFamily: "itim",
                    color: switchctrl.switchValue.value
                        ? Color(0xff435d6e)
                        : Color(0xffe7dbca),
                    fontSize: 15,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            color: valueBackground,
            child: Text('$value',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'itim')),
          )
        ],
      ),
    );
  }
}
