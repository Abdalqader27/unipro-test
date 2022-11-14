import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  Widget row(String text, IconData icon, int number) {
    return Row(
      children: [
        Icon(icon, size: 20.sp),
        Text(
          text,
          style: TextStyle(fontSize: 14.sp),
        ),
        Text(
          "$number",
          style: TextStyle(fontSize: 14.sp),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10.3.w, 10.3.w, 10.3.w),
      child: Row(children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.cyan),
              elevation: MaterialStateProperty.all(10.w),
              padding: MaterialStateProperty.all(EdgeInsets.all(8.w))),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.account_balance,
                size: 20.sp,
              ),
              Text(
                " New Order",
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        row('Table: ', Icons.table_rows, 28),
        SizedBox(
          width: 4.w,
        ),
        row("", Icons.phone, 123456789),
      ]),
    );
  }
}
