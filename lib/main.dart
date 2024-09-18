import 'dart:ffi';
import 'package:flutter/material.dart';

import 'SecondPage.dart';
import 'ThirdPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //controller tanımlama
  TextEditingController _sifrecontroller = TextEditingController();
  String textFieldDegiskeni = '';
  bool isChecked = false;
  bool isSwitched = false;
  double sliderValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingactionButton özelliği
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          print('floatingactionButton basıldı!');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        leading: Icon(Icons.search),
        foregroundColor: Colors.red,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: _sifrecontroller,
            //değiştiğinde:
            onChanged: (_text) {
              //ekran her değiştiğinde burası tekrar çalışsın
              setState(() {
                textFieldDegiskeni = _text;
              });
            },
            decoration: InputDecoration(
              //filled: true,
              //fillColor: Colors.deepOrangeAccent,
                hintText: 'Lütfen şifrenizi giriniz.',
                labelText: 'Şifre',
                icon: Icon(Icons.password),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blueAccent, width: 3))),
          ),
          Text(_sifrecontroller.text),
          Text(textFieldDegiskeni.toString()),
          Checkbox(
              checkColor: Colors.blueAccent,
              activeColor: Colors.black,
              //checkbox'ta yapacağım her değişiklik bu değişkeni etkilesin
              value: isChecked,
              onChanged: (_control) {
                setState(() {
                  isChecked = _control!;
                });
              }),
          Visibility(
              visible: isChecked,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )),
          CheckboxListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              tileColor: Colors.orangeAccent,
              value: isChecked,
              onChanged: (_val) {
                setState(() {
                  isChecked = _val!;
                });
              }),
          Switch(
              activeColor: Colors.black,
              value: isSwitched,
              onChanged: (ilkDeger) {
                setState(() {
                  isSwitched = ilkDeger;
                });
              }),
          Text(isSwitched.toString()),
          SwitchListTile(
              title: Text(
                'Title',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text('subtitle', style: TextStyle(color: Colors.white)),
              tileColor: Colors.brown,
              value: isSwitched,
              onChanged: (_yeni) {
                setState(() {
                  isSwitched = _yeni;
                });
              }),
          Slider(
            min: 10.0,
            max: 100,
            divisions: 9,
            label: sliderValue.toString(),
            inactiveColor: Colors.brown,
            activeColor: Colors.red,
            value: sliderValue,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                shape: ContinuousRectangleBorder(),
              ),
              onPressed: () {
                Route sayfa2yeGecis = MaterialPageRoute(builder: (context) {
                  return SecondPage();
                });
                Navigator.pushReplacement(context, sayfa2yeGecis);
              },
              child: Text('2.sayfa')),
          SizedBox(height: 20),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                shape: ContinuousRectangleBorder(),
              ),
              onPressed: () {
                //sayfa3eGecis adında bir geçiş tanımladım.
                Route sayfa3eGecis = MaterialPageRoute(builder: (context) {
                  return ThirdPage();
                });

                Navigator.push(context, sayfa3eGecis);
              },
              child: Text('3.sayfa')),
        ],
      ),
    );
  }
}