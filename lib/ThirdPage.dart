import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
    ),
      backgroundColor: Colors.green,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('3.Sayfa'),

          OutlinedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('2.sayfaya geri dön'))
        ],


      )),
    );
  }
}