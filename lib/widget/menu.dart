import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/src/provider.dart';
import 'package:unipro/providers/menu_provider.dart';

import '../constant.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Divider divaider = Divider(
    height: 8.h,
  );
  // void selectCategory(BuildContext ctx)
  Widget menuscontainar(String id, String title) {
    return InkWell(
      onTap: () {
        context.read<MenuProvider>().loadItems(id);
      },
      child: Column(
        children: [
          Container(
            height: 70.h,
            color: Colors.grey,
            child: Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
            )),
          ),
          divaider,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Column(
          children: DUMMY_CATEGORIES.map((i) {
            return menuscontainar(i.id, i.title);
          }).toList(),
        ),
      );
    });
  }
}
