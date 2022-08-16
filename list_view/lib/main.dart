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
 String output = "no data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text("Api Demo"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output),
              RaisedButton(
                onPressed: (){
                  User.getUsers("2").then((users) {
                    output = "";
                    for (int i = 0; i< users.length;i++){
                      output = output+"["+users[i].name+"]";
                    }
                    setState(() {

                    });

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
