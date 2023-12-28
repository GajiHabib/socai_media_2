import 'package:flutter/material.dart';

class MYBotton extends StatelessWidget {
  final Color color;
  final Image image;
  final String icontext;
  const MYBotton({super.key, required this.color, required this.image, required this.icontext});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
            Column(
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:color,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 20,
                        spreadRadius: 10
                      )
                    ]
                  ),
                  child: Center(
                    child: image,
                  )
                ),
                Text(icontext,style: TextStyle(fontSize:30,color: Colors.red,fontWeight: FontWeight.bold),)
              ],
            )
           ],);
           
  }
}