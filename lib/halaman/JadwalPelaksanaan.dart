import 'package:flutter/material.dart';

class JadwalPelaksanaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jadwal Pelaksanaan',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00686c),
          title: Text(
            'Jadwal Pelaksanaan',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Jadwal Pelaksanaan PPDB',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tanggal: 1-10 April 2024',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Jadwal Pendaftaran PPDB',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tanggal: 15 Maret - 30 Maret 2024',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
