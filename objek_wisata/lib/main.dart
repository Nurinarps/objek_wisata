import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OBJEK WISATA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Hutan Wisata Tinjomoyo';
  final String location = 'Jl. Tinjomoyo Barat';
  final String description =
      '''Ekowisata Tinjomoyo adalah hutan wisata di kawasan Desa Tinjomoyo, kota Semarang yang didalamnya banyak terdapat tanaman keras 
dan tanaman buah-buahan dll, juga terdapat berbagai fasilitas alam yang sangat menantang bagi para komunitas penggemar seperti 
Airsoft Gun, pengambilan pre-wedding.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/Tinjomoyo-Hutan.png',
            height: 250,
            width: 412,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Color.fromARGB(255, 124, 124, 124),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Container(
                width: 80,
              ),
              Icon(
                Icons.star,
                size: 30,
                color: Colors.yellow,
              ),
              Text(
                '4,3',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 16,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
