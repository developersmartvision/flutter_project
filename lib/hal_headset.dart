import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Column(
          children: [
            Text("Headset", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            Image(image: NetworkImage("https://www.jakartanotebook.com/images/products/42/1020/50307/12/rloop-bluetooth-headset-headphone-telinga-kucing-cute-cat-ear-cxt-b39-pink-39.jpg"),width: 200.0,)
    
          ],
        ),
      ),
    );
  }
}
