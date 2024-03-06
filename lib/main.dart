import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //buat hilangin tulisan debug
      title: 'Gaharu_123210155_TugasPert2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { //deklarasi setiap text field
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S|U|R|A|T [SUARA RAKYAT]' , style: TextStyle(fontWeight:
        FontWeight.bold),),
        actions: [
          IconButton( //membuat tombol keluar
              icon: const Icon(Icons.logout_rounded),
              tooltip: 'Saya Tidak Ingin Berpendapat',
              onPressed: () {
            },
          ),
        ],
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: [
              SizedBox(height: 1),
              Text('Gaharu Winanggya Binathara | 123210155',
                style: TextStyle(fontStyle: FontStyle.italic),),
              SizedBox(height: 50),

              Image.asset('images/3pr.jpg'),
              SizedBox(height: 1),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Apa Pendapat Saudara',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height: 90),
              Image.asset('images/mahfud.jpg'),
              SizedBox(height: 1),
              TextField(
                controller: _textController2,
                decoration: InputDecoration(
                  hintText: 'Apa Pendapat Saudara?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height: 90),
              Image.asset('images/jokowipak.jpg'),
              SizedBox(height: 1),
              TextField(
                controller: _textController3,
                decoration: InputDecoration(
                  hintText: 'Apa Pendapat Saudara?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height: 90),
              Image.asset('images/bahlil.jpg'),
              SizedBox(height: 1),
              TextField(
                controller: _textController4,
                decoration: InputDecoration(
                  hintText: 'Apa Pendapat Saudara?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height: 90),
              Image.asset('images/wtp.jpg'),
              SizedBox(height: 1),
              TextField(
                controller: _textController5,
                decoration: InputDecoration(
                  hintText: 'Apa Pendapat Saudara?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),

              SizedBox(height: 50),
              Container(          //tombol kirim
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () { //untuk enampilkan pendapat di comsole
                    print('Text: ${_textController.text}');
                    print('Text: ${_textController2.text}');
                    print('Text: ${_textController3.text}');
                    print('Text: ${_textController4.text}');
                    print('Text: ${_textController5.text}');
                  },
                  child: Text( "KIRIM", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold , fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}