import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  String stateKata = "Angka";
  String kata = "Huruf";
  int pengali = 1;
  String hasil = "";

  void hitKali() {
    setState(() {
      pengali = pengali * 2;
    });
  }

  void hitTambah() {
    setState(() {
      if (stateKata == "Angka") {
        number = number + pengali;
        hasil = hasil + " " + number.toString();
      } else {
        number = number + pengali;
        hasil = hasil + " " + String.fromCharCode(number + 64);
      }
    });
  }

  void hitGanti() {
    setState(() {
      if (kata == "Huruf") {
        kata = "Angka";
        stateKata = "Huruf";
      } else {
        kata = "Huruf";
        stateKata = "Angka";
      }
      
    });
  }

  void hitReset() {
    setState(() {
      number = 0;
      pengali = 1;
      stateKata = "Angka";
      kata = "Huruf";
      hasil = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Pertama"),
        ),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:
                  LinearGradient(colors: <Color>[Colors.yellow, Colors.lime])),
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Text("Pengali : " + pengali.toString()),
              Text("Hasil : " + hasil),
              Text(stateKata),
              Row(
                children: <Widget>[
                  
                  RaisedButton(
                    onPressed: hitKali,
                    padding: EdgeInsets.all(20),
                    child: Text("Kalikan dengan 2"),
                  ),
                  RaisedButton(
                    onPressed: hitTambah,
                    padding: EdgeInsets.all(20),
                    child: Text("Tambahkan"),
                  ),
                  RaisedButton(
                    onPressed: hitGanti,
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(kata),
                  ),
                  RaisedButton(
                    onPressed: hitReset,
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text("RESET"),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
