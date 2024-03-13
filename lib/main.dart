import 'package:flutter/material.dart';
import 'halaman/CekKelulusan.dart';
import 'halaman/pilih_menu.dart';
import 'halaman/MasukAplikasi.dart';
import 'halaman/LokasiPendaftaran.dart';
import 'halaman/DayaTampung.dart';
import 'halaman/JadwalPelaksanaan.dart';

void main() => runApp(SearchBarApp());

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({Key? key}) : super(key: key);

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      color: Colors.blue,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Flutter',
      color: Colors.blue,
      builder: (context, navigator) {
        return Navigator(
          initialRoute: '/',
          onGenerateRoute: (settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case '/':
                builder = (BuildContext _) => pilih_menu();
                break;
              case '/CekKelulusan':
                builder = (BuildContext _) => CekKelulusan();
                break;
              case '/MasukAplikasi' :
                builder = (BuildContext _) => MasukAplikasi();
                break;
              case '/LokasiPendaftaran' :
                builder = (BuildContext _) => LokasiPendaftaran();
                break;
              case '/DayaTampung' :
                builder = (BuildContext _) => DayaTampung();
                break;
              case '/JadwalPelaksanaan' :
                builder = (BuildContext _) => JadwalPelaksanaan();
                break;
              default:
                throw Exception('Invalid route: ${settings.name}');
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          },
        );
      },
    );
  }
}
