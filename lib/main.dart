import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Aplikasi Pertama"),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(10),
//             width: 200,
//             height: 100,
//             color: Colors.lime,
//             child: Text(
//               "Coba Aplikasi Supaya saya bisa, saya sungguh-sungguh memperlajarinya cekgu",
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             )),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.ac_unit),
//       ),
//     ));
//   }
// }
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void hitTambah() {
    setState(() {
      number = number + 1;
    });
  }

  void hitReset() {
    setState(() {
      number = 0;
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
                  LinearGradient(colors: <Color>[Colors.lime, Colors.orange])),
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Text("Baris 1"),
              Text(number.toString()),
              Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: hitTambah,
                    child: Text("Tambah"),
                  ),
                  RaisedButton(
                    onPressed: hitReset,
                    child: Text("Reset"),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
