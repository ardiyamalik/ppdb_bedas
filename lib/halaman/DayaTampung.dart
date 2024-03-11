import 'package:flutter/material.dart';
import 'package:ppdb_bedas/RepositoryLokasi.dart';
import 'package:ppdb_bedas/ModelLokasi.dart';

class DayaTampung extends StatefulWidget {
  const DayaTampung({Key? key}) : super(key: key);

  @override
  _DayaTampungState createState() => _DayaTampungState();
}

class _DayaTampungState extends State<DayaTampung> {
  final RepositoryLokasi repositoryLokasi = RepositoryLokasi();
  List<lokasi_pendaftaran> lokasiList = [];

  @override
  void initState() {
    super.initState();
    getDataFromApi();
  }

  void getDataFromApi() async {
    try {
      List<lokasi_pendaftaran> data = await repositoryLokasi.getData();
      setState(() {
        lokasiList = data;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daya Tampung',
      home: Scaffold(
        body: Container(
          color:  Color(0xff00686c),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: lokasiList.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                itemCount: lokasiList.length,
                itemBuilder: (context, index) {
                  final lokasi = lokasiList[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        lokasi.nama,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NPSN', // Teks "Alamat"
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 2), // Spasi antara baris
                          Text(
                            lokasi.npsn,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 5), // Spasi antara baris

                          Text(
                            'Alamat',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 2), // Spasi antara baris
                          Text(
                            lokasi.alamat,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 5), // Spasi antara baris
                          Text(
                            'Daya Tampung', // Teks "Alamat"
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 2), // Spasi antara baris
                          Text(
                            lokasi.daya_tampung,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}