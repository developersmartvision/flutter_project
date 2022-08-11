import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Navigasi",
    home: HalamanSatu(),
    routes: <String,WidgetBuilder>{
      '/HalamanSatu' : (BuildContext context) => HalamanSatu(),
      '/HalamanDua' : (BuildContext context) => HalamanDua(),

    },
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Music"),),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.headset, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, '/HalamanDua');
          },
        ),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("speaker"),),
     body: Center(
       child: IconButton(
         icon: Icon(Icons.speaker),
         onPressed: (){
           Navigator.pushNamed(context, '/HalamanSatu');
         },

       ),
     ),
   );

  }

}


