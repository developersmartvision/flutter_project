import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Column(
          children: [
            Text("Radio", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            Icon(Icons.radio, size: 90.0,)

          ],
        ),
      ),
    );
  }
}
