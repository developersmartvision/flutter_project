import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "list View",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[800],
        title: Text("Daftar produk"),
      ),
      body: ListView(
        children: [
          ListTutorial(
            gambar:
                "https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/O4IkgkAMTL.jpg",
            judul: "Speaker",
          ),
          ListTutorial(
            gambar:
                "https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/O4IkgkAMTL.jpg",
            judul: "Speaker1",
          ),
          ListTutorial(
            gambar:
                "https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/O4IkgkAMTL.jpg",
            judul: "Speaker2",
          ),
          ListTutorial(
            gambar:
                "https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/O4IkgkAMTL.jpg",
            judul: "Speaker3",
          )
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  // const ListTutorial({Key? key}) : super(key: key);
  ListTutorial({required this.gambar, required this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      child: Center(
        child: Row(
          children: [
            Image(
              image: NetworkImage(gambar),
              width: 100.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      judul,
                      style: TextStyle(fontSize: 20.0, wordSpacing: 10.0),
                    ),
                    Text(
                      "Deskripsi",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
