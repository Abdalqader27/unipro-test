import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:unipro/providers/menu_provider.dart';

import '/widget/appbar.dart';
import '/widget/meal_item.dart';
import '/widget/menu.dart';

class Home extends StatelessWidget {
  static String routeName = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        flexibleSpace: appbar(),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: Column(children: [
                  Menu(),
                ]),
              );
            }),
          ),
          SizedBox(
            width: 4.w,
          ),
          Expanded(
            flex: 4,
            child: LayoutBuilder(builder: (context, constraints) {
              return Consumer<MenuProvider>(
                builder: (context, provider, child) {
                  return GridView(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    children: provider.items.map((x) {
                      return Meal_Item(
                        x.id,
                        x.title,
                        x.image,
                        x.price,
                      );
                    }).toList(),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
