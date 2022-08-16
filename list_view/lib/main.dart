import 'package:flutter/material.dart';
import 'package:list_view/post_result_model.dart';
import 'package:list_view/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text("Api Demo"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null) ? " id :"+postResult!.id +"\n nama : "+ postResult!.name +" \n job:${postResult!.job} \n tanggal: ${postResult!.created}": "tidak ada data"),
              RaisedButton(
                onPressed: (){
                  PostResult.connectToApi("Badu", "Dockter").then((value) {
                    postResult = value;
                    setState(() { });
                  });
                },
                child: Text("POST") ,
              )
            ],
          ),
        ),
      )
    );
  }
}
