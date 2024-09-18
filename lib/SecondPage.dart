import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      actions: [
        OutlinedButton(
          onPressed: () {
            print('Butona Tıklandı!');
          },
          child: Text('Profilim'),
        )
      ],
      backgroundColor: Colors.brown,
      title: Text('YGK'),
      centerTitle: true,

      foregroundColor: Colors.red,
    ),backgroundColor: Colors.grey,
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          OutlinedButton(onPressed: (){
            Route sayfa3e2denGec = MaterialPageRoute(builder: (context){
              return ThirdPage();
            });
            Navigator.push(context,sayfa3e2denGec);
          }, child: Text('3.sayfaya Geçiş'))
        ],
      )),);
  }
}