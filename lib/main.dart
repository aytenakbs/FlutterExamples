import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          appBar: AppBar(
            actions: [
              OutlinedButton(
                  onPressed: () {
                    print('Butona Tıklandı!');
                  },
                  child: Text('Profilim'))
            ],
            backgroundColor: Colors.brown,
            title: Text('YGK'),
            centerTitle: true,
            leading: Icon(Icons.search),
            foregroundColor: Colors.red,
          ),
          body: SizedBox(
            width:500,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Center(child: Text('Kodluyoruz',style:TextStyle(color: Colors.white,fontSize: 25))),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        border: Border.all(color: Colors.lightBlueAccent,width: 4),
                        // shape: BoxShape.circle,
                        //shape:BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16)
                    )),
                Container(
                    child: Center(child: Text('Kodluyoruz',style:TextStyle(color: Colors.white,fontSize: 25))),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        border: Border.all(color: Colors.lightBlueAccent,width: 4),
                        // shape: BoxShape.circle,
                        //shape:BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16)
                    )),
                Container(
                    child: Center(child: Text('Kodluyoruz',style:TextStyle(color: Colors.white,fontSize: 25))),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        border: Border.all(color: Colors.lightBlueAccent,width: 4),
                        // shape: BoxShape.circle,
                        //shape:BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16)
                    )),
              ],
            ),
          )),
    );
  }
}