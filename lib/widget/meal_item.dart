import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Meal_Item extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String price;
  static String routeName = 'meal_items';
Meal_Item(this.id,this.title, this.image,this.price);
Widget Elevated(IconData iconData,Function function){
  return  Expanded(
    child: ElevatedButton(
    onPressed: function(),
    style: ElevatedButton.styleFrom(
    fixedSize: Size(10.w, 10.h),
    shape: const CircleBorder(),
      elevation: 5,
    ),
    child:Icon(iconData,color: Colors.black,),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:(){
    },
        child:Card(
          child: Column(
            children:[
              Container(
                height: 110.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),fit: BoxFit.cover,
                      alignment:Alignment.topCenter )
              ),
               ),
                     Text(title),
                     SizedBox(height: 5.h,),
                     Text(price),
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
     Elevated(Icons.remove, (){}),
                         Text("1"),
                         Elevated(Icons.add,(){})
                       ],
                     ),
                   ),
SizedBox(height: 2.h,),
            Expanded(
              flex: 1,
              child: Container(
                width:double.infinity,
                height: 20.h,
                child: TextButton(
                    onPressed: (){}, child: Text("Add to cart",style: TextStyle(color: Colors.black),),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation:MaterialStateProperty.all(2),)),
              ),
            )
            ]   ),
        ),
     );
  }
}
